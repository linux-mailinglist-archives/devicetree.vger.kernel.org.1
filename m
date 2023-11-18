Return-Path: <devicetree+bounces-16867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A76F27F021E
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 19:54:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7FF7B209B3
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 18:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBDB4199CD;
	Sat, 18 Nov 2023 18:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="e5wJMpE9"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACA65F2;
	Sat, 18 Nov 2023 10:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=b5JCReSehGd9vgarmSFVhXVxVGPZtnscv9/0QR9Wvgw=; b=e5wJMpE9Tmh6r68FpqiceA9rhG
	o8drF/CTrDqcdPP+9WDA8GtTxWn2jrpb8JnvRazj8r2N82ceUDUKs/OAzLaQUKuPN/tJlLWL2rGWE
	V1FQTBvNdf4pxOm4+l0xWTTIVcLohoIHw8pYw/ObMlE7hadsh2IR/HcoAggBcZryJ9mI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r4QSc-000WY3-Ks; Sat, 18 Nov 2023 19:54:30 +0100
Date: Sat, 18 Nov 2023 19:54:30 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Russ Weight <russ.weight@linux.dev>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 9/9] net: pse-pd: Add PD692x0 PSE controller
 driver
Message-ID: <45694d77-bcf8-4377-9aa0-046796de8d74@lunn.ch>
References: <20231116-feature_poe-v1-0-be48044bf249@bootlin.com>
 <20231116-feature_poe-v1-9-be48044bf249@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231116-feature_poe-v1-9-be48044bf249@bootlin.com>

> +struct pd692x0_priv {
> +	struct i2c_client *client;
> +	struct pse_controller_dev pcdev;
> +
> +	enum pd692x0_fw_state fw_state;
> +	struct fw_upload *fwl;
> +	bool cancel_request:1;
> +
> +	u8 msg_id;
> +	bool last_cmd_key:1;

Does a bool bit field of size 1 make any sense?  I would also put the
two bitfields next to each other, and the compiler might then pack
them into the same word. The base type of a u8 would allow the compile
to put it next to the msg_id without any padding.

> +	unsigned long last_cmd_key_time;
> +
> +	enum ethtool_pse_admin_state admin_state[PD692X0_MAX_LOGICAL_PORTS];
> +};
> +
> +/* Template list of the fixed bytes of the communication messages */
> +static const struct pd692x0_msg pd692x0_msg_template_list[PD692X0_MSG_CNT] = {
> +	[PD692X0_MSG_RESET] = {
> +		.content = {
> +			.key = PD692X0_KEY_CMD,
> +			.sub = {0x07, 0x55, 0x00},
> +			.data = {0x55, 0x00, 0x55, 0x4e,
> +				 0x4e, 0x4e, 0x4e, 0x4e},
> +		},
> +	},

Is there any documentation about what all these magic number mean?

> +/* Implementation of the i2c communication in particular when there is
> + * a communication loss. See the "Synchronization During Communication Loss"
> + * paragraph of the Communication Protocol document.
> + */

Is this document public?

> +static int pd692x0_recv_msg(struct pd692x0_priv *priv,
> +			    struct pd692x0_msg *msg,
> +			    struct pd692x0_msg_content *buf)
> +{
> +	const struct i2c_client *client = priv->client;
> +	int ret;
> +
> +	memset(buf, 0, sizeof(*buf));
> +	if (msg->delay_recv)
> +		msleep(msg->delay_recv);
> +	else
> +		msleep(30);
> +
> +	i2c_master_recv(client, (u8 *)buf, sizeof(*buf));
> +	if (buf->key)
> +		goto out;

This is the first attempt to receive the message. I assume buf->key
not being 0 indicates something has been received?

> +
> +	msleep(100);
> +
> +	i2c_master_recv(client, (u8 *)buf, sizeof(*buf));
> +	if (buf->key)
> +		goto out;

So this is a second attempt. Should there be another memset? Could the
first failed transfer fill the buffer with random junk in the higher
bytes, and a successful read here could be a partial read and the end
of the buffer still contains the junk.

> +
> +	ret = pd692x0_send_msg(priv, msg);
> +	if (ret)
> +		return ret;

So now we are re-transmitting the request.

> +
> +	if (msg->delay_recv)
> +		msleep(msg->delay_recv);
> +	else
> +		msleep(30);
> +
> +	i2c_master_recv(client, (u8 *)buf, sizeof(*buf));
> +	if (buf->key)
> +		goto out;
> +
> +	msleep(100);
> +
> +	i2c_master_recv(client, (u8 *)buf, sizeof(*buf));
> +	if (buf->key)
> +		goto out;
> +
> +	msleep(10000);

And two more attemps to receive it.

> +
> +	ret = pd692x0_send_msg(priv, msg);
> +	if (ret)
> +		return ret;
> +
> +	if (msg->delay_recv)
> +		msleep(msg->delay_recv);
> +	else
> +		msleep(30);
> +
> +	i2c_master_recv(client, (u8 *)buf, sizeof(*buf));
> +	if (buf->key)
> +		goto out;
> +
> +	msleep(100);
> +
> +	i2c_master_recv(client, (u8 *)buf, sizeof(*buf));
> +	if (buf->key)
> +		goto out;

Another resend and two more attempts to receive.

Is there a reason to not uses for loops here? And maybe put
send/receive/receive into a helper? And maybe make the first send part
of this, rather then separate? I think the code will be more readable
when restructured.

> +static int pd692x0_ethtool_set_config(struct pse_controller_dev *pcdev,
> +				      unsigned long id,
> +				      struct netlink_ext_ack *extack,
> +				      const struct pse_control_config *config)
> +{
> +	struct pd692x0_priv *priv = to_pd692x0_priv(pcdev);
> +	struct pd692x0_msg_content buf = {0};
> +	struct pd692x0_msg msg;
> +	int ret;
> +
> +	ret = pd692x0_fw_unavailable(priv);
> +	if (ret)
> +		return ret;

It seems a bit late to check if the device has any firmware. I would
of expected probe to check that, and maybe attempt to download
firmware. If that fails, fail the probe, since the PSE is a brick.

> +static struct pd692x0_msg_ver pd692x0_get_sw_version(struct pd692x0_priv *priv)
> +{
> +	struct pd692x0_msg msg = pd692x0_msg_template_list[PD692X0_MSG_GET_SW_VER];
> +	struct device *dev = &priv->client->dev;
> +	struct pd692x0_msg_content buf = {0};
> +	struct pd692x0_msg_ver ver = {0};
> +	int ret;
> +
> +	ret = pd692x0_sendrecv_msg(priv, &msg, &buf);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to get PSE version (%pe)\n", ERR_PTR(ret));
> +		return ver;

I _think_ that return is wrong ???

> +static enum fw_upload_err pd692x0_fw_write(struct fw_upload *fwl,
> +					   const u8 *data, u32 offset,
> +					   u32 size, u32 *written)
> +{
> +	struct pd692x0_priv *priv = fwl->dd_handle;
> +	char line[PD692X0_FW_LINE_MAX_SZ];
> +	const struct i2c_client *client;
> +	int ret, i;
> +	char cmd;
> +
> +	client = priv->client;
> +	priv->fw_state = PD692X0_FW_WRITE;
> +
> +	/* Erase */
> +	cmd = 'E';
> +	ret = i2c_master_send(client, &cmd, 1);
> +	if (ret < 0) {
> +		dev_err(&client->dev,
> +			"Failed to boot programming mode (%pe)\n",
> +			ERR_PTR(ret));
> +		return FW_UPLOAD_ERR_RW_ERROR;
> +	}
> +
> +	ret = pd692x0_fw_recv_resp(client, 100, "TOE\r\n", sizeof("TOE\r\n") - 1);
> +	if (ret)
> +		return ret;
> +
> +	ret = pd692x0_fw_recv_resp(client, 5000, "TE\r\n", sizeof("TE\r\n") - 1);
> +	if (ret)
> +		dev_warn(&client->dev,
> +			 "Failed to erase internal memory, however still try to write Firmware\n");
> +
> +	ret = pd692x0_fw_recv_resp(client, 100, "TPE\r\n", sizeof("TPE\r\n") - 1);
> +	if (ret)
> +		dev_warn(&client->dev,
> +			 "Failed to erase internal memory, however still try to write Firmware\n");
> +
> +	if (priv->cancel_request)
> +		return FW_UPLOAD_ERR_CANCELED;
> +
> +	/* Program */
> +	cmd = 'P';
> +	ret = i2c_master_send(client, &cmd, sizeof(char));
> +	if (ret < 0) {
> +		dev_err(&client->dev,
> +			"Failed to boot programming mode (%pe)\n",
> +			ERR_PTR(ret));
> +		return ret;
> +	}
> +
> +	ret = pd692x0_fw_recv_resp(client, 100, "TOP\r\n", sizeof("TOP\r\n") - 1);
> +	if (ret)
> +		return ret;
> +
> +	i = 0;
> +	while (i < size) {
> +		ret = pd692x0_fw_get_next_line(data, line, size - i);
> +		if (!ret) {
> +			ret = FW_UPLOAD_ERR_FW_INVALID;
> +			goto err;
> +		}
> +
> +		i += ret;
> +		data += ret;
> +		if (line[0] == 'S' && line[1] == '0') {
> +			continue;
> +		} else if (line[0] == 'S' && line[1] == '7') {
> +			ret = pd692x0_fw_write_line(client, line, true);
> +			if (ret)
> +				goto err;

Is the firmware in Motorola SREC format? I thought the kernel had a
helper for that, but a quick search did not find it. So maybe i'm
remembering wrongly. But it seems silly for every driver to implement
an SREC parser.

   Andrew

