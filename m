Return-Path: <devicetree+bounces-273339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HtqNZTUr2kfcgIAu9opvQ
	(envelope-from <devicetree+bounces-273339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:21:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4CC247388
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:21:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D8FBD306120E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF0CC3EB819;
	Tue, 10 Mar 2026 08:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVPdwGhC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8943D7D79;
	Tue, 10 Mar 2026 08:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773130732; cv=none; b=fWajabAn6UxLaidH8N2mUhCJ1QE9PP3lXQ9W0TZxDBbI3c9t4sSnwDrOxSYfoytLIEhchppF3sznfJtUnuf3apdSEkaVmY2hwU6OfQD2a4rcxbLatXkv9lNTA/xCFTbVKft185glQU3hHebsN9lLrsZ71t4fiNRIUDvYwsWU/hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773130732; c=relaxed/simple;
	bh=jVWEVI4M3B5l7OcndC0qgW3gJgUikvwmKVY5XWQtOV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F1ViOCj8ND35K5Wa/9ZN9NVyuc7AWXm0NCak0PTHcjSYIEOpzky6XhxPn+Poc6BwZutKebIEVHEda7OsYcg5DYAikXOzUVuTcZwjOZQzXozNlXIC46JkYBsc8VqL68Fl33RQ3I5I8OhxMHFxJYOT3pRuhrD7f43YL4+Y1UxLBDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVPdwGhC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 866D2C19423;
	Tue, 10 Mar 2026 08:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773130732;
	bh=jVWEVI4M3B5l7OcndC0qgW3gJgUikvwmKVY5XWQtOV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DVPdwGhC+Wa4CrhzfsoeTjQntnCpt/vNj6lxMOzWBch1cHaqPcJd8H/t1Nsa3X1ma
	 ENsC23UHDRNXpHHy9RtGnrqx62bqt8KqWmXPe92DIGRIP9E+LV5hqvGhc3SysoJIla
	 yZbo9wXTtdBO+vIaA714p7ZDYYKiSccYNHyOpeJjZQIM3M5enLCq9+8deaNR/xSwzZ
	 5zJaEHGT5nMx1kuw5K8DtqaZ0cGmqJiFvZKWS72aYdE8miBTGMNuo+N+c4akpyxrcj
	 nUurssSbI1q0fEGL/wU5yMvjVz05/b0L6lNeAtmRiuN1O/VuXJ2t+7tBgIo8l1ctKq
	 7CrkyqC0DywPQ==
Date: Tue, 10 Mar 2026 09:18:49 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hermes Wu <Hermes.wu@ite.com.tw>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Pet.Weng@ite.com.tw, Kenneth.Hung@ite.com.tw, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] drm/bridge: Add ITE IT6162 MIPI DSI to HDMI
 bridge driver
Message-ID: <20260310-literate-flashy-dugong-d12228@quoll>
References: <20260309-upstream-6162-v2-0-debdb6c88030@ite.com.tw>
 <20260309-upstream-6162-v2-2-debdb6c88030@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260309-upstream-6162-v2-2-debdb6c88030@ite.com.tw>
X-Rspamd-Queue-Id: 2F4CC247388
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273339-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,ite.com.tw,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,hdcp_work.work:url]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 05:42:02PM +0800, Hermes Wu wrote:
> +
> +static int it6162_infoblock_complete(struct it6162 *it6162)
> +{
> +	struct device *dev = it6162->dev;
> +	struct regmap *regmap = it6162->regmap;
> +	unsigned int val;
> +	int ret;
> +
> +	ret = regmap_read(regmap, OFFSET_HOST_SET, &val);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret,
> +				     "read failed rx reg[0x%x]",
> +				     OFFSET_HOST_SET);

How is this probe path?

> +
> +	return val;
> +}
> +
> +static int it6162_infoblock_host_set(struct it6162 *it6162, u8 setting)
> +{
> +	struct device *dev = it6162->dev;
> +	int status;
> +	int val;
> +
> +	regmap_write(it6162->regmap, OFFSET_HOST_SET, setting);
> +	/*wait command complete*/
> +	status = readx_poll_timeout(it6162_infoblock_complete,
> +				    it6162,
> +				    val,
> +				    val <= 0,
> +				    50 * 1000,
> +				    TIMEOUT_INFOBLOCK_MS * 1000);
> +
> +	if (status < 0 || val != 0) {
> +		dev_err(dev, "%s err status = %d, val = %d", __func__,
> +			status, val);
> +		return -ETIMEDOUT;
> +	}
> +
> +	return 0;
> +}
> +
> +static int it6162_infoblock_request_data(struct it6162 *it6162,
> +					 u8 setting, u8 index, u8 *buf)
> +{
> +	struct device *dev = it6162->dev;
> +	int status;
> +	bool val = 0;
> +
> +	it6162->data_buf_sts = NO_STS;
> +	regmap_write(it6162->regmap, OFFSET_DATA_TYPE_IDX, index);
> +	regmap_write(it6162->regmap, OFFSET_HOST_SET, setting);
> +
> +	status = readx_poll_timeout(it6162_infoblock_complete,
> +				    it6162,
> +				    val,
> +				    val <= 0 && it6162->data_buf_sts == BUF_READY,
> +				    50 * 1000,
> +				    TIMEOUT_INFOBLOCK_MS * 1000);
> +
> +	if (status < 0 || val != 0) {
> +		dev_err(dev,
> +			"%s err status = %d %d",
> +			__func__,
> +			status,
> +			it6162->data_buf_sts);

Completely messed formatting / wrapping. Please follow Linux coding style.

> +		return -ETIMEDOUT;


> +	}
> +
> +	dev_dbg(dev, "%s [0x%x] 0x%x", __func__, setting, it6162->data_buf_sts);
> +	if (it6162->data_buf_sts != BUF_READY)
> +		return -EIO;
> +
> +	regmap_bulk_read(it6162->regmap,
> +			 OFFSET_DATA_BUFFER, buf, DATA_BUFFER_DEPTH);
> +	return 0;
> +}
> +
> +static void it6162_infoblock_mipi_config(struct it6162 *it6162)
> +{
> +	struct it6162_mipi_cfg *cfg = &it6162->mipi_cfg;
> +	u8 cfg_val = 0;
> +
> +	cfg_val = FIELD_PREP(MIPI_CLOCK_MODE_MASK, cfg->continuous_clk) |
> +		  FIELD_PREP(MIPI_LANE_SWAP_MASK, cfg->lane_swap) |
> +		  FIELD_PREP(MIPI_PN_SWAP_MASK, cfg->pn_swap) |
> +		  FIELD_PREP(MIPI_LANE_NUM_MASK, cfg->lane_num - 1);
> +
> +	dev_dbg(it6162->dev, "%s 0x%02x 0x%02x", __func__,
> +		cfg_val, cfg->mode);

So here dev_dbg but in all other places drm_dbg - decide on one.

...

> +
> +	drm_dbg(it6162->drm, "%s ver %x enc %d", __func__, ver, encription);

Look.

And what is "encription"?

> +
> +	if (ver != NO_HDCP) {
> +		tx_out.hdcp_version = ver;
> +		tx_out.hdcp_encyption = encription;
> +		tx_out.stream_ID = 0;
> +		it6162_tx_hdcp_enable(it6162, &tx_out);
> +	} else {
> +		it6162_tx_hdcp_disable(it6162);
> +	}
> +}
> +
> +static void it6162_tx_enable(struct it6162 *it6162)
> +{
> +	if (!it6162->en_hdcp)
> +		it6162->hdcp_version = NO_HDCP;
> +	else
> +		it6162->hdcp_version = it6162->hdcp_cfg.hdcp_version;
> +
> +	drm_dbg(it6162->drm, "%s %d", __func__, it6162->hdcp_version);

Nope, that's pretty useless debug. You will be printing this on every
enable/disable.


> +}
> +
> +static void it6162_tx_disable(struct it6162 *it6162)
> +{
> +	if (it6162->en_hdcp) {
> +		cancel_delayed_work_sync(&it6162->hdcp_work);
> +		it6162_tx_hdcp_setup(it6162, NO_HDCP, false);
> +	}
> +	drm_dbg(it6162->drm, "%s %d", __func__, it6162->hdcp_version);
> +}
> +
> +static inline void
> +it6162_pack_video_setting(struct it6162 *it6162,
> +			  struct it6162_video_settings *settings,
> +			  struct it6162_infoblock_msg *msg)
> +{
> +	msg->msg[0x00] = settings->hdew & 0xFF;
> +	msg->msg[0x01] = (settings->hdew >> 8) & 0x3F;
> +	msg->msg[0x02] = settings->vdew & 0xFF;
> +	msg->msg[0x03] = (settings->vdew >> 8) & 0x3F;
> +	msg->msg[0x04] = settings->clock  & 0xFF;
> +	msg->msg[0x05] = (settings->clock >> 8) & 0xFF;
> +	msg->msg[0x06] = (settings->clock >> 16) & 0xFF;
> +	msg->msg[0x07] = (settings->clock >> 24) & 0xFF;
> +	msg->msg[0x08] = settings->hfp & 0xFF;
> +	msg->msg[0x09] = (settings->hfp >> 8) & 0x3F;
> +	msg->msg[0x0A] = settings->hsw & 0xFF;
> +	msg->msg[0x0B] = (settings->hsw >> 8) & 0x3F;
> +	msg->msg[0x0C] = settings->hbp & 0xFF;
> +	msg->msg[0x0D] = (settings->hbp >> 8) & 0x3F;
> +	msg->msg[0x0E] = settings->vfp & 0xFF;
> +	msg->msg[0x0F] = (settings->vfp >> 8) & 0x3F;
> +	msg->msg[0x10] = settings->vsw & 0xFF;
> +	msg->msg[0x11] = (settings->vsw >> 8) & 0x3F;
> +	msg->msg[0x12] = settings->vbp & 0xFF;
> +	msg->msg[0x13] = (settings->vbp >> 8) & 0x3F;
> +	msg->msg[0x14] = (settings->prog << 2) |
> +			 (settings->vpol << 1) |
> +			  settings->hpol;
> +
> +	msg->msg[0x15] = settings->v_aspect;
> +	msg->msg[0x16] = settings->h_aspect & 0xFF;
> +	msg->msg[0x17] = settings->h_aspect >> 8;
> +	msg->msg[0x18] = settings->pix_rep;
> +	msg->msg[0x19] = settings->vic;
> +	msg->msg[0x1A] = settings->colorspace;
> +	msg->msg[0x1B] = 1;
> +
> +	msg->len = 0x1C;
> +	msg->action = HOST_SET_VIDEO_INFO;
> +}
> +
> +static void it6162_mipi_set_video_timing(struct it6162 *it6162,
> +					 struct it6162_video_settings *mode)
> +{
> +	struct it6162_infoblock_msg msg;
> +
> +	it6162_pack_video_setting(it6162, mode, &msg);
> +	guard(mutex)(&it6162->lock);
> +	it6162_infoblock_write_msg(it6162, &msg);
> +}
> +
> +static int it6162_hdcp_read_infomation(struct it6162 *it6162,
> +				       u8 *status, u8 *bksv)
> +{
> +	u8 buf[DATA_BUFFER_DEPTH];
> +	int ret;
> +
> +	guard(mutex)(&it6162->lock);
> +	ret = it6162_infoblock_request_data(it6162,
> +					    HOST_SET_HDCP_R,
> +					    0x00,
> +					    buf);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (status)
> +		memcpy(status, buf, 2);
> +
> +	if (bksv)
> +		memcpy(bksv, buf + 2, 5);
> +
> +	return 0;
> +}
> +
> +static int it6162_hdcp_read_list(struct it6162 *it6162,
> +				 u8 *ksv_list,
> +				 int dev_count)
> +{
> +	u8 buf[DATA_BUFFER_DEPTH];
> +	int i, j, ret;
> +
> +	if (!ksv_list || dev_count <= 0)
> +		return -EINVAL;
> +
> +	guard(mutex)(&it6162->lock);
> +
> +	for (i = 0; i < (dev_count / 6 + 1); i++) {
> +		/* KsV lists */
> +		ret = it6162_infoblock_request_data(it6162,
> +						    HOST_SET_HDCP_R,
> +						    i + 1,
> +						    buf);
> +
> +		if (ret < 0)
> +			return ret;
> +
> +		for (j = 0; j < 30; j += 5) {
> +			if ((i * 6 + j / 5) >= dev_count)
> +				break;
> +
> +			memcpy(&ksv_list[(i * 6 + j / 5) * 5], &buf[j], 5);
> +		}
> +	}
> +
> +	return dev_count;
> +}
> +
> +static void it6162_update_hdcp14(struct it6162 *it6162)
> +{
> +	struct drm_device *drm = it6162->drm;
> +	int dev_count;
> +	u8 bksv[5];
> +	u8 bstatus[2];
> +	u8 ksvlist[5 * 30];
> +	int ret;
> +
> +	ret = it6162_hdcp_read_infomation(it6162, bstatus, bksv);
> +
> +	if (ret < 0) {
> +		drm_err(drm, "read Bstatus fail!!!!");

Why errors are so screaming!!!!

> +		return;
> +	}
> +	drm_dbg(drm, "status = 0x%02X%02X", bstatus[1], bstatus[0]);
> +
> +	if (DRM_HDCP_MAX_DEVICE_EXCEEDED(bstatus[0]) ||
> +	    DRM_HDCP_MAX_CASCADE_EXCEEDED(bstatus[1])) {
> +		drm_err(drm, "HDCP14 Max Topology Limit Exceeded");
> +		return;
> +	}
> +
> +	dev_count = DRM_HDCP_NUM_DOWNSTREAM(bstatus[0]);
> +	drm_dbg(drm, "dev_count %d", dev_count);
> +	if (dev_count == 0)
> +		return;
> +
> +	dev_count = dev_count > 30 ? 30 : dev_count;
> +	ret = it6162_hdcp_read_list(it6162, ksvlist, dev_count);
> +

Drop, there is never blank line between cmd and check of return value.

> +	if (ret < 0) {
> +		drm_err(drm, "read KSV list fail!!!!");

No need to stress the user!!!

> +		return;
> +	}
> +}
> +
> +static void it6162_update_hdcp23(struct it6162 *it6162)
> +{
> +	struct drm_device *drm = it6162->drm;
> +	int dev_count;
> +	u8 rxid[5];
> +	u8 rxinfo[2];
> +	u8 rxid_list[5 * 30];
> +	int ret;
> +
> +	ret = it6162_hdcp_read_infomation(it6162, rxinfo, rxid);
> +
> +	if (ret < 0) {
> +		drm_err(drm, "read Rxinfo fail!!!!");
> +		return;
> +	}
> +	drm_dbg(drm, "Rxinfo 0x%02X%02X", rxinfo[1], rxinfo[0]);

Do you debug every single register access?

> +
> +	if (HDCP_2_2_MAX_CASCADE_EXCEEDED(rxinfo[1]) ||
> +	    HDCP_2_2_MAX_DEVS_EXCEEDED(rxinfo[1])) {
> +		drm_err(drm, "Topology Max Size Exceeded");
> +		return;
> +	}
> +
> +	dev_count = (HDCP_2_2_DEV_COUNT_HI(rxinfo[0]) << 4 |
> +		     HDCP_2_2_DEV_COUNT_LO(rxinfo[1]));
> +	dev_count = dev_count > 30 ? 30 : dev_count;
> +	if (dev_count == 0)
> +		return;
> +
> +	ret = it6162_hdcp_read_list(it6162, rxid_list, dev_count);
> +	if (ret < 0) {
> +		drm_err(drm, "read RxID list fail!!!!");
> +		return;
> +	}
> +}
> +
> +static void it6162_update_hdcp(struct it6162 *it6162)
> +{
> +	if (it6162->hdcp_version == HDCP_23)
> +		it6162_update_hdcp23(it6162);
> +	else
> +		it6162_update_hdcp14(it6162);
> +}
> +
> +static void it6162_hdcp_handler(struct it6162 *it6162)
> +{
> +	struct regmap *regmap = it6162->regmap;
> +	unsigned int tx_status, sink_cap;
> +	enum hdcp_state hdcp_sts;
> +	struct it6162_hdcp_cfg *hdcp_cfg = &it6162->hdcp_cfg;
> +	u8 hdcp_ver;
> +	u64 cp_status;
> +
> +	if (hdcp_cfg->hdcp_version == NO_HDCP || !it6162->en_hdcp) {
> +		drm_dbg(it6162->drm, "HDCP not enabled, skip hdcp check");
> +		return;
> +	}
> +
> +	regmap_read(regmap, OFFSET_TX_STATUS, &tx_status);
> +	regmap_read(regmap, OFFSET_SINK_CAP, &sink_cap);
> +
> +	drm_dbg(it6162->drm, "Tx status %x", tx_status);
> +	drm_dbg(it6162->drm, "SINK capability %x", sink_cap);
> +
> +	if (!GET_TX_VIDEO_STATUS(tx_status)) {
> +		drm_dbg(it6162->drm, "video not stable, skip hdcp check");
> +		return;
> +	}
> +
> +	hdcp_sts = GET_TX_HDCP_STATUS(tx_status);
> +	hdcp_ver = GET_SINK_CAP_HDCP_VER(sink_cap);
> +	drm_dbg(it6162->drm, "hdcp status: %x->%x, version: %x-%x",
> +		it6162->hdcp_sts, hdcp_sts,
> +		it6162->hdcp_version, hdcp_ver);
> +
> +	if (it6162->hdcp_version != NO_HDCP) {
> +		if (it6162->hdcp_sts != hdcp_sts ||
> +		    it6162->hdcp_sts == NO_HDCP_STATE) {
> +			it6162->hdcp_sts = hdcp_sts;
> +			cp_status = DRM_MODE_CONTENT_PROTECTION_DESIRED;
> +			switch (hdcp_sts) {
> +			case AUTH_DONE:
> +				drm_dbg(it6162->drm, "HDCP AUTH DONE");
> +				it6162_update_hdcp(it6162);
> +				cp_status = DRM_MODE_CONTENT_PROTECTION_ENABLED;
> +				break;
> +			case AUTH_FAIL:
> +				drm_dbg(it6162->drm, "HDCP AUTH FAIL");
> +				if (hdcp_ver == HDCP_23) {
> +					drm_dbg(it6162->drm,
> +						"HDCP 2.3 auth fail, change to HDCP 1.4");
> +					it6162_tx_hdcp_setup(it6162,
> +							     HDCP_14,
> +							     true);
> +				} else {
> +					it6162_tx_hdcp_disable(it6162);
> +				}
> +
> +				break;
> +			default:
> +				drm_dbg(it6162->drm, "HDCP NO AUTH");
> +				it6162_tx_hdcp_setup(it6162,
> +						     it6162->hdcp_version,
> +						     true);
> +				break;
> +			}
> +		}
> +		drm_hdcp_update_content_protection(it6162->connector, cp_status);
> +	}
> +}
> +
> +static void it6162_interrupt_handler(struct it6162 *it6162)
> +{
> +	unsigned int int_status, tx_status;
> +	enum drm_connector_status connector_status;
> +	struct device *dev = it6162->dev;
> +	struct regmap *regmap = it6162->regmap;
> +	int err;
> +
> +	err = regmap_read(regmap, OFFSET_EVENT_CHG, &int_status);
> +	if (err < 0) {
> +		dev_err(dev, "read failed rx reg[0x%x] err: %d",
> +			OFFSET_EVENT_CHG, err);
> +		return;
> +	}
> +
> +	regmap_write(it6162->regmap, OFFSET_EVENT_CHG, 0xFF);
> +
> +	if (!!GET_BUFFER_STATUS(int_status)) {
> +		regmap_write(it6162->regmap, OFFSET_DRIVER_DATA, int_status);
> +		it6162->data_buf_sts = GET_BUFFER_STATUS(int_status);
> +	}
> +
> +	if (!(int_status & EVENT_CHG))
> +		return;
> +
> +	drm_dbg(it6162->drm, "evnet change 0x%X", int_status);
> +
> +	err = regmap_read(regmap, OFFSET_TX_STATUS, &tx_status);
> +	if (err < 0) {
> +		dev_err(dev, "read failed rx reg[0x%x] err: %d",
> +			OFFSET_TX_STATUS, err);
> +		return;
> +	}
> +	drm_dbg(it6162->drm, "Tx status %x", tx_status);
> +
> +	connector_status = GET_TX_HPD_STATUS(tx_status) ?
> +			   connector_status_connected :
> +			   connector_status_disconnected;
> +
> +	if (it6162->connector_status != connector_status) {
> +		it6162->connector_status = connector_status;
> +		drm_bridge_hpd_notify(&it6162->bridge,
> +				      it6162->connector_status);
> +	}
> +
> +	if (it6162->en_hdcp && GET_TX_VIDEO_STATUS(tx_status) &&
> +	    connector_status == connector_status_connected)
> +		queue_delayed_work(system_wq,
> +				   &it6162->hdcp_work,
> +				   msecs_to_jiffies(2000));
> +}
> +
> +static int it6162_wait_ready_event(struct it6162 *it6162)
> +{
> +	unsigned int val;
> +	int ret;
> +	struct device *dev = it6162->dev;
> +	struct regmap *regmap = it6162->regmap;
> +
> +	ret = regmap_read(regmap, OFFSET_EVENT_CHG, &val);
> +	if (ret < 0) {
> +		dev_err(dev, "read failed rx reg[0x%x] err: %d",
> +			OFFSET_EVENT_CHG, ret);
> +		return ret;
> +	}
> +	dev_dbg(dev, "%s val %x ret %d", __func__, val, ret);

Drop

> +	if (val & EVENT_READY)
> +		return EVENT_READY;
> +
> +	ret = regmap_read(regmap, 0x00, &val);
> +	if (ret < 0) {
> +		dev_err(dev, "read failed rx reg[0x%x] err: %d",
> +			OFFSET_EVENT_CHG, ret);
> +		return ret;
> +	}
> +
> +	if (val == 0x61) {
> +		dev_warn(dev, "MCU ready event missed, but reg[0x00] is 0x61, consider MCU ready");
> +		return EVENT_READY;
> +	}
> +
> +	return 0;
> +}
> +
> +static bool it6162_wait_mcu_ready(struct it6162 *it6162)
> +{
> +	struct device *dev = &it6162->it6162_i2c->dev;
> +	unsigned int status;
> +	int val;
> +
> +	status = readx_poll_timeout(it6162_wait_ready_event,
> +				    it6162,
> +				    val,
> +				    val == EVENT_READY,
> +				    100 * 1000,
> +				    1500 * 1000);
> +
> +	dev_dbg(dev, "%s status %d val %x", __func__, status, val);

Drop, start writing useful and informative debug messages, not junk of
register outputs overflowing dmesg.

> +	return val == EVENT_READY ? true : false;
> +}
> +
> +static void it6162_reset_init(struct it6162 *it6162)
> +{
> +	it6162_set_default_config(it6162);
> +}
> +
> +static int it6162_platform_set_power(struct it6162 *it6162)
> +{
> +	struct device *dev = it6162->dev;
> +	int err;
> +
> +	err = regulator_enable(it6162->ivdd);
> +	if (err)
> +		return dev_err_probe(dev, err, "Failed to enable IVDD");
> +
> +	err = regulator_enable(it6162->pwr1833);
> +	if (err)
> +		return dev_err_probe(dev, err, "Failed to enable VDD1833");
> +
> +	err = regulator_enable(it6162->ovdd);
> +	if (err)
> +		return dev_err_probe(dev, err, "Failed to enable OVDD");
> +
> +	usleep_range(10000, 20000);
> +	gpiod_set_value_cansleep(it6162->gpiod_reset, 1);
> +	usleep_range(1000, 2000);
> +	gpiod_set_value_cansleep(it6162->gpiod_reset, 0);
> +	usleep_range(10000, 20000);
> +
> +	return 0;
> +}
> +
> +static int it6162_platform_clear_power(struct it6162 *it6162)
> +{
> +	struct device *dev = it6162->dev;
> +	int err;
> +
> +	err = regulator_disable(it6162->ivdd);
> +	if (err)
> +		return dev_err_probe(dev, err, "Failed to disable IVDD");
> +
> +	usleep_range(2000, 3000);
> +
> +	err = regulator_disable(it6162->pwr1833);
> +	if (err)
> +		return dev_err_probe(dev, err, "Failed to disable VDD1833");
> +
> +	err = regulator_disable(it6162->ovdd);
> +	if (err)
> +		return dev_err_probe(dev, err, "Failed to disable OVDD");
> +
> +	return 0;
> +}
> +
> +static int it6162_detect_devices(struct it6162 *it6162)
> +{
> +	struct device *dev = it6162->dev;
> +	const struct it6162_chip_info *chip_info;
> +	u32 chip_id, version;
> +	u8 buf[6];
> +
> +	if (it6162_platform_set_power(it6162) < 0)
> +		return -ENODEV;
> +	/*wait MCU ready event after power on*/
> +	if (!it6162_wait_mcu_ready(it6162))
> +		return -ENODEV;
> +
> +	chip_info = of_device_get_match_data(dev);
> +
> +	regmap_bulk_read(it6162->regmap,
> +			 OFFSET_CHIP_ID_L, &buf[0], 6);
> +
> +	dev_info(dev, "chip id %02x %02x %02X", buf[0], buf[1], buf[2]);
> +	dev_info(dev, "chip VER %02x %02x %02x", buf[3], buf[4], buf[5]);

Drop both. Driver must be silent on success.

> +
> +	chip_id = (buf[0] << 16) | (buf[1] << 8) | (buf[2]);
> +	version = (buf[3] << 16) | (buf[4] << 8) | (buf[5]);
> +	dev_info(dev, "chip id 0x%06x, version 0x%06x", chip_id, version);

How many times you need to print it?

Driver must be silent on success.

> +
> +	if (chip_id != chip_info->chip_id || version < chip_info->version) {
> +		dev_err(dev, "chip_id 0x%06x != 0x%06x",
> +			chip_id, chip_info->chip_id);
> +		dev_err(dev, "version 0x%06x != 0x%06x",
> +			version, chip_info->version);

And again here?

> +
> +		return -ENODEV;
> +	}
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused it6162_poweron(struct it6162 *it6162)
> +{
> +	struct device *dev = it6162->dev;
> +	int err;
> +
> +	dev_dbg(dev, "powered on Start");

No, drop. Don't debug standard kernel code paths. Kernel already gives
you tools to debug this.

> +
> +	err = it6162_platform_set_power(it6162);
> +	if (err < 0)
> +		return err;
> +	/*wait MCU ready event after power on*/
> +	if (!it6162_wait_mcu_ready(it6162))
> +		return -ENODEV;
> +
> +	it6162->connector_status = connector_status_disconnected;
> +	it6162_reset_init(it6162);
> +
> +	enable_irq(it6162->it6162_i2c->irq);
> +	dev_dbg(dev, "enable irq %d",
> +		it6162->it6162_i2c->irq);

Drop

> +
> +	it6162->power_on = true;
> +	dev_info(dev, "it6162 poweron end");

Drop


> +	return 0;
> +}
> +
> +static int __maybe_unused it6162_poweroff(struct it6162 *it6162)
> +{
> +	struct device *dev = it6162->dev;
> +	int err;
> +
> +	dev_dbg(dev, "powered off start");

Drop

> +	disable_irq(it6162->it6162_i2c->irq);
> +	dev_dbg(dev, "disable irq %d", it6162->it6162_i2c->irq);

Drop

> +
> +	err = it6162_platform_clear_power(it6162);
> +	if (err < 0)
> +		return err;
> +
> +	it6162->power_on = false;
> +	dev_dbg(dev, "it6162 poweroff");

Drop. Your code is really unreadable. In so many places.

> +	return 0;
> +}
> +
> +static void it6162_config_default(struct it6162 *it6162)
> +{
> +	struct it6162_mipi_cfg *mipi_cfg = &it6162->mipi_cfg;
> +	struct it6162_hdcp_cfg *hdcp_cfg = &it6162->hdcp_cfg;
> +
> +	mipi_cfg->lane_num = 4;
> +	mipi_cfg->pn_swap = false;
> +	mipi_cfg->lane_swap = false;
> +	mipi_cfg->en_port[0] = false;
> +	mipi_cfg->en_port[1] = false;
> +	mipi_cfg->continuous_clk = true;
> +	mipi_cfg->mode = SYNC_EVENT;
> +	mipi_cfg->format = MIPI_DSI_FMT_RGB888;
> +	mipi_cfg->mode_flags = MIPI_DSI_MODE_VIDEO;
> +
> +	it6162->en_hdcp = false;
> +	hdcp_cfg->hdcp_version = HDCP_23;
> +	hdcp_cfg->hdcp_encyption = true;
> +	hdcp_cfg->stream_ID = 0;
> +
> +	it6162->connector_status = connector_status_disconnected;
> +}
> +
> +static enum drm_connector_status it6162_detect(struct it6162 *it6162)
> +{
> +	struct regmap *regmap = it6162->regmap;
> +	unsigned int tx_status;
> +
> +	regmap_read(regmap, OFFSET_TX_STATUS, &tx_status);
> +
> +	it6162->connector_status = GET_TX_HPD_STATUS(tx_status) ?
> +				   connector_status_connected :
> +				   connector_status_disconnected;
> +
> +	drm_dbg(it6162->drm, "%s connector_status %x", __func__,
> +		it6162->connector_status);
> +	return it6162->connector_status;
> +}
> +
> +static int it6162_get_edid_block(void *data, u8 *buf, unsigned int block,
> +				 size_t len)
> +{
> +	struct it6162 *it6162 = data;
> +	unsigned int cnt;
> +	unsigned int i;
> +	u8 config;
> +
> +	if (len > EDID_LENGTH)
> +		return -EINVAL;
> +
> +	guard(mutex)(&it6162->lock);
> +
> +	cnt = 0;
> +	for (i = 0; i < EDID_LENGTH; i += DATA_BUFFER_DEPTH, cnt++) {
> +		config = (block << 2) | (cnt);
> +		if (it6162_infoblock_request_data(it6162,
> +						  HOST_SET_EDID_R,
> +						  config, buf + i) < 0)
> +			return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static void it6162_enable_audio(struct it6162 *it6162,
> +				struct it6162_audio *config)
> +{
> +	unsigned int val;
> +
> +	guard(mutex)(&it6162->lock);
> +	val = FIELD_PREP(MASK_AUDIO_CHANNEL_NUM, config->channel_number) |
> +	      FIELD_PREP(MASK_AUDIO_SELECT, config->select) |
> +	      FIELD_PREP(MASK_AUDIO_TYPE, config->type);
> +	regmap_write(it6162->regmap, OFFSET_AUDIO_CTRL0, val);
> +	regmap_write(it6162->regmap, OFFSET_AUDIO_CTRL1, config->sample_rate);
> +	/* Standard i2s 16bit, 24bit */
> +	val = FIELD_PREP(MASK_I2S_BUS_MODE, 0) |
> +	      FIELD_PREP(MASK_I2S_WORD_LEN, config->sample_width) |
> +	      FIELD_PREP(MASK_I2S_VALID, 1);
> +	regmap_write(it6162->regmap, OFFSET_AUDIO_CTRL2, val);
> +	it6162_infoblock_host_set(it6162, HOST_SET_AUDIO_INFO);
> +}
> +
> +static void it6162_disable_audio(struct it6162 *it6162)
> +{
> +	guard(mutex)(&it6162->lock);
> +	regmap_write(it6162->regmap, OFFSET_AUDIO_CTRL0, 0x00);
> +	regmap_write(it6162->regmap, OFFSET_AUDIO_CTRL1, 0x00);
> +	regmap_write(it6162->regmap, OFFSET_AUDIO_CTRL2, 0x00);
> +	it6162_infoblock_host_set(it6162, HOST_SET_AUDIO_INFO);
> +}
> +
> +static irqreturn_t it6162_int_threaded_handler(int unused, void *data)
> +{
> +	struct it6162 *it6162 = data;
> +
> +	it6162_interrupt_handler(it6162);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static void it6162_hdcp_work(struct work_struct *work)
> +{
> +	struct it6162 *it6162 = container_of(work,
> +				struct it6162,
> +				hdcp_work.work);
> +
> +	it6162_hdcp_handler(it6162);
> +}
> +
> +static struct mipi_dsi_host *it6162_of_get_dsi_host_by_port(struct it6162 *it6162,
> +							    int port)
> +{
> +	struct device_node *of = it6162->dev->of_node;
> +	struct device_node *host_node;
> +	struct device_node *endpoint;
> +	struct mipi_dsi_host *dsi_host;
> +
> +	endpoint = of_graph_get_endpoint_by_regs(of, port, -1);
> +	if (!endpoint)
> +		return ERR_PTR(-ENODEV);
> +
> +	host_node = of_graph_get_remote_port_parent(endpoint);
> +	of_node_put(endpoint);
> +	if (!host_node)
> +		return ERR_PTR(-ENODEV);
> +
> +	dsi_host = of_find_mipi_dsi_host_by_node(host_node);
> +	of_node_put(host_node);
> +
> +	if (!dsi_host)
> +		return ERR_PTR(-EPROBE_DEFER);
> +
> +	return dsi_host;
> +}
> +
> +static int it6162_of_get_dsi_host(struct it6162 *it6162)
> +{
> +	struct device *dev = it6162->dev;
> +	struct mipi_dsi_host *dsi_host;
> +	int port, host_count = 0;
> +
> +	for (port = 0; port < 2; port++) {
> +		dsi_host = it6162_of_get_dsi_host_by_port(it6162, port);
> +
> +		if (PTR_ERR(dsi_host) == -EPROBE_DEFER) {
> +			dev_info(dev,
> +				 "DSI host for port %d not ready, defer probe",

NAK, you never print messages on probe deferral.

> +				 port);
> +			return -EPROBE_DEFER;
> +		}
> +
> +		if (IS_ERR(dsi_host)) {
> +			dev_info(dev, "DSI host for port %d not found", port);
> +			continue;
> +		}
> +
> +		host_count++;
> +	}
> +
> +	dev_info(dev, "%s = %d", __func__, host_count);

No, how many times you need to inform user on basic things happening?

> +	if (host_count == 0)
> +		return -ENODEV;
> +
> +	return 0;
> +}
> +
> +static int it6162_load_mipi_pars_from_port(struct it6162 *it6162, int port)
> +{
> +	struct device_node *of = it6162->dev->of_node;
> +	struct device_node *endpoint;
> +	struct device *dev = it6162->dev;
> +	struct it6162_mipi_cfg *mipicfg = &it6162->mipi_cfg;
> +	u32 data_lanes[4] = {1};
> +	u32 lane_polarities[5] = {0};
> +	int dsi_lanes, i;
> +
> +	endpoint = of_graph_get_endpoint_by_regs(of, port, -1);
> +
> +	if (!endpoint)
> +		return 0;
> +
> +	dsi_lanes = drm_of_get_data_lanes_count(endpoint, 1, 4);
> +
> +	if (dsi_lanes < 0)
> +		return dsi_lanes;
> +
> +	mipicfg->lane_num = dsi_lanes;
> +
> +	of_property_read_u32_array(endpoint, "data-lanes",
> +				   data_lanes, dsi_lanes);
> +	/* Support lane swapping [1 2 3 4] => [4 3 2 1] */
> +	if (data_lanes[0] == 4)
> +		mipicfg->lane_swap  = true;
> +
> +	of_property_read_u32_array(endpoint, "lane-polarities",
> +				   lane_polarities, dsi_lanes + 1);
> +	/* Support Dp/Dn swapping all data lanes and clock lane must have same polarity */
> +	if (lane_polarities[0] != 0)
> +		mipicfg->pn_swap = true;
> +
> +	for (i = 1; i <= dsi_lanes; i++)
> +		if (lane_polarities[i] != lane_polarities[0])
> +			dev_warn_once(dev, "invalid lane-polarities configuration");
> +
> +	if (of_property_present(endpoint, "clock-noncontinuous")) {
> +		mipicfg->mode_flags |= MIPI_DSI_CLOCK_NON_CONTINUOUS;
> +		mipicfg->continuous_clk = false;
> +	}
> +
> +	of_node_put(endpoint);
> +
> +	dev_info(dev, "lanes: %d pn_swap: %d, lane_swap: %d, mode_flags: %lu",
> +		 mipicfg->lane_num, mipicfg->pn_swap,
> +		 mipicfg->lane_swap, mipicfg->mode_flags);

And one more info based on static information. This is from DTS? So
drop.


> +
> +	return dsi_lanes;
> +}
> +
> +static int it6162_attach_dsi(struct it6162 *it6162)
> +{
> +	struct device *dev = it6162->dev;
> +	struct device_node *np = dev->of_node;
> +	const struct mipi_dsi_device_info info = {"it6162-mipi", 0, np};
> +	struct mipi_dsi_device *dsi;
> +	struct mipi_dsi_host *dsi_host;
> +	struct it6162_mipi_cfg *mipi_cfg = &it6162->mipi_cfg;
> +	int ret = 0;
> +
> +	for (int port = 0; port < 2; port++) {
> +		dsi_host = it6162_of_get_dsi_host_by_port(it6162, port);
> +		if (IS_ERR(dsi_host))
> +			continue;
> +
> +		mipi_cfg->en_port[port] = true;
> +
> +		if (!it6162->dsi) {
> +			ret = it6162_load_mipi_pars_from_port(it6162, port);
> +			if (ret <= 0)
> +				return ret;
> +			dev_info(dev, "DSI host loaded paras for port %d", port);

And here

> +			it6162->dsi = dsi;
> +		}
> +
> +		dsi = devm_mipi_dsi_device_register_full(dev, dsi_host, &info);
> +		if (IS_ERR(dsi)) {
> +			dev_err(dev, "failed to create dsi device");
> +			return PTR_ERR(dsi);
> +		}
> +
> +		dsi->lanes = mipi_cfg->lane_num;
> +		dsi->format = mipi_cfg->format;
> +		dsi->mode_flags = mipi_cfg->mode_flags;
> +		dev_info(dev, "dsi lanes %d, format %d, mode_flags %lu",
> +			 dsi->lanes, dsi->format, dsi->mode_flags);

And here

> +		ret = devm_mipi_dsi_attach(dev, dsi);
> +
> +		if (ret) {
> +			dev_err(dev, "failed to attach dsi device %d", port);
> +			return ret;
> +		}
> +	}
> +
> +	it6162_poweron(it6162);
> +	return 0;
> +}
> +
> +static bool it6162_of_get_audio(struct it6162 *it6162)
> +{
> +	struct device_node *np = it6162->dev->of_node;
> +	struct device_node *audio_port;
> +
> +	audio_port = of_graph_get_port_by_id(np, 2);
> +	if (audio_port) {
> +		of_node_put(audio_port);
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
> +static void it6162_parse_dt(struct it6162 *it6162)
> +{
> +	struct device_node *np = it6162->dev->of_node;
> +
> +	/* get hdcp support*/
> +	it6162->en_hdcp = of_property_present(np, "ite,support-hdcp");
> +}
> +
> +static int it6162_init_pdata(struct it6162 *it6162)
> +{
> +	struct device *dev = it6162->dev;
> +
> +	it6162->ivdd = devm_regulator_get(dev, "ivdd");
> +	if (IS_ERR(it6162->ivdd))
> +		return dev_err_probe(dev, PTR_ERR(it6162->ivdd),
> +				     "failed to get ivdd regulator");
> +
> +	it6162->pwr1833 = devm_regulator_get(dev, "ovdd1833");
> +	if (IS_ERR(it6162->pwr1833))
> +		return dev_err_probe(dev, PTR_ERR(it6162->pwr1833),
> +				     "failed to get ovdd1833 regulator");
> +
> +	it6162->ovdd = devm_regulator_get(dev, "ovdd");
> +	if (IS_ERR(it6162->ovdd))
> +		return dev_err_probe(dev, PTR_ERR(it6162->ovdd),
> +				     "failed to get ovdd regulator");
> +
> +	it6162->gpiod_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> +	if (IS_ERR(it6162->gpiod_reset))
> +		return dev_err_probe(dev, PTR_ERR(it6162->gpiod_reset),
> +				     "failed to get reset gpio\n");
> +
> +	return 0;
> +}
> +
> +static int it6162_bridge_attach(struct drm_bridge *bridge,
> +				struct drm_encoder *encoder,
> +				 enum drm_bridge_attach_flags flags)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +	struct drm_device *drm = bridge->dev;
> +
> +	it6162->drm = drm;
> +
> +	if (!drm_core_check_feature(drm, DRIVER_ATOMIC)) {
> +		drm_dbg(drm,
> +			"it6162 driver only copes with atomic updates");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	return 0;
> +}
> +
> +static enum drm_mode_status
> +it6162_bridge_mode_valid(struct drm_bridge *bridge,
> +			 const struct drm_display_info *info,
> +			 const struct drm_display_mode *mode)
> +{
> +	unsigned long long rate;
> +
> +	rate = drm_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_RGB);
> +	if (rate == 0)
> +		return MODE_NOCLOCK;
> +
> +	return bridge->funcs->hdmi_tmds_char_rate_valid(bridge, mode, rate);
> +}
> +
> +static enum drm_connector_status
> +it6162_bridge_detect(struct drm_bridge *bridge,
> +		     struct drm_connector *connector)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162->power_on ? it6162_detect(it6162) :
> +				connector_status_disconnected;
> +}
> +
> +static void
> +it6162_avi_to_video_setting(struct it6162 *it6162,
> +			    struct hdmi_avi_infoframe *avi_info,
> +			    struct it6162_video_settings *video)
> +{
> +	video->vic = avi_info->video_code;
> +
> +	switch (avi_info->picture_aspect) {
> +	case HDMI_PICTURE_ASPECT_4_3:
> +		video->h_aspect = 4;
> +		video->v_aspect = 3;
> +		break;
> +	case HDMI_PICTURE_ASPECT_16_9:
> +		video->h_aspect = 16;
> +		video->v_aspect = 9;
> +		break;
> +	case HDMI_PICTURE_ASPECT_64_27:
> +		video->h_aspect = 64;
> +		video->v_aspect = 27;
> +		break;
> +	case HDMI_PICTURE_ASPECT_256_135:
> +		video->h_aspect = 256;
> +		video->v_aspect = 135;
> +		break;
> +	default:
> +		video->h_aspect = 4;
> +		video->v_aspect = 3;
> +		break;
> +	}
> +
> +	video->pix_rep = avi_info->pixel_repeat + 1;
> +}
> +
> +static void
> +it6162_display_mode_to_settings(struct it6162 *it6162,
> +				struct drm_display_mode *mode,
> +				struct it6162_video_settings *settings)
> +{
> +	struct drm_device *drm = it6162->drm;
> +
> +	if (mode->flags & DRM_MODE_FLAG_PHSYNC)
> +		settings->hpol = 1;
> +
> +	if (mode->flags & DRM_MODE_FLAG_NVSYNC)
> +		settings->vpol = 1;
> +
> +	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
> +		settings->prog = 0;
> +
> +	settings->clock = mode->clock;
> +	settings->hdew = mode->hdisplay;
> +	settings->hfp = mode->hsync_start - mode->hdisplay;
> +	settings->hsw = mode->hsync_end - mode->hsync_start;
> +	settings->hbp = mode->htotal - mode->hsync_end;
> +	settings->htotal = mode->htotal;
> +
> +	settings->vdew = mode->vdisplay;
> +	settings->vfp = mode->vsync_start - mode->vdisplay;
> +	settings->vsw = mode->vsync_end - mode->vsync_start;
> +	settings->vbp = mode->vtotal - mode->vsync_end;
> +	settings->vtotal = mode->vtotal;
> +
> +	drm_dbg(drm, "HActive = %u", settings->hdew);
> +	drm_dbg(drm, "VActive = %u", settings->vdew);
> +	drm_dbg(drm, "HTotal  = %u", settings->htotal);
> +	drm_dbg(drm, "VTotal  = %u", settings->vtotal);
> +	drm_dbg(drm, "PCLK    = %ukhz", settings->clock);
> +	drm_dbg(drm, "HFP     = %u", settings->hfp);
> +	drm_dbg(drm, "HSW     = %u", settings->hsw);
> +	drm_dbg(drm, "HBP     = %u", settings->hbp);
> +	drm_dbg(drm, "VFP     = %u", settings->vfp);
> +	drm_dbg(drm, "VSW     = %u", settings->vsw);
> +	drm_dbg(drm, "VBP     = %u", settings->vbp);
> +	drm_dbg(drm, "HPOL    = %d", settings->hpol);
> +	drm_dbg(drm, "VPOL    =  %d", settings->vpol);
> +	drm_dbg(drm, "Progressive = %d", settings->prog);
> +}
> +
> +static void it6162_bridge_atomic_enable(struct drm_bridge *bridge,
> +					struct drm_atomic_state *state)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_connector_state *conn_state;
> +	struct drm_connector *connector;
> +	struct hdmi_avi_infoframe *avi;
> +	struct it6162_video_settings video_setting;
> +
> +	drm_dbg(it6162->drm, "it6162_bridge_atomic_enable");
> +	connector = drm_atomic_get_new_connector_for_encoder(state,
> +							     bridge->encoder);
> +
> +	if (!connector)
> +		return;
> +
> +	conn_state = drm_atomic_get_new_connector_state(state, connector);
> +	if (!conn_state)
> +		return;
> +
> +	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
> +	if (!crtc_state)
> +		return;
> +
> +	it6162->connector = connector;
> +	it6162->content_protection = conn_state->content_protection;
> +
> +	drm_atomic_helper_connector_hdmi_update_infoframes(connector, state);
> +	avi = &conn_state->hdmi.infoframes.avi.data.avi;
> +	video_setting.colorspace = conn_state->hdmi.output_format;
> +
> +	it6162_avi_to_video_setting(it6162, avi, &video_setting);
> +	it6162_display_mode_to_settings(it6162,
> +					&crtc_state->mode,
> +					&video_setting);
> +
> +	it6162_mipi_set_video_timing(it6162, &video_setting);
> +
> +	it6162_tx_enable(it6162);
> +	it6162_mipi_enable(it6162);
> +}
> +
> +static int it6162_bridge_atomic_check(struct drm_bridge *bridge,
> +				      struct drm_bridge_state *bridge_state,
> +				      struct drm_crtc_state *crtc_state,
> +				      struct drm_connector_state *conn_state)
> +{
> +	struct drm_display_mode *adj = &crtc_state->adjusted_mode;
> +	struct drm_display_mode *mode = &crtc_state->mode;
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +	u32 hfp, hsw, hbp;
> +	u32 clock;
> +	u32 hfp_check;
> +
> +	clock = mode->clock;
> +	hfp = mode->hsync_start - mode->hdisplay;
> +	hsw = mode->hsync_end - mode->hsync_start;
> +	hbp = mode->htotal - mode->hsync_end;
> +
> +	hfp_check = DIV_ROUND_UP(65 * clock, 1000000) + 4;
> +	if (hfp >= hfp_check)
> +		return 0;
> +
> +	drm_dbg(it6162->drm, "hfp_check %d", hfp_check);
> +	if (hbp > hfp_check - hfp) {
> +		adj->hsync_start = adj->hdisplay + hfp_check;
> +		adj->hsync_end = adj->hsync_start + hsw;
> +	}
> +
> +	return 0;
> +}
> +
> +static void it6162_bridge_atomic_disable(struct drm_bridge *bridge,
> +					 struct drm_atomic_state *state)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	drm_dbg(it6162->drm, "it6162_bridge_atomic_disable");
> +	it6162_tx_disable(it6162);
> +	it6162_mipi_disable(it6162);
> +}
> +
> +static const struct drm_edid *
> +it6162_bridge_read_edid(struct drm_bridge *bridge,
> +			struct drm_connector *connector)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return drm_edid_read_custom(connector, it6162_get_edid_block, it6162);
> +}
> +
> +static int it6162_audio_update_hw_params(struct it6162 *it6162,
> +					 struct it6162_audio *config,
> +					 struct hdmi_codec_daifmt *fmt,
> +					 struct hdmi_codec_params *hparms)
> +{
> +	config->channel_number = hparms->channels;
> +	config->type = LPCM;
> +
> +	switch (hparms->sample_rate) {
> +	case 32000:
> +		config->sample_rate = SAMPLE_RATE_32K;
> +		break;
> +	case 44100:
> +		config->sample_rate = SAMPLE_RATE_44_1K;
> +		break;
> +	case 48000:
> +		config->sample_rate = SAMPLE_RATE_48K;
> +		break;
> +	case 88200:
> +		config->sample_rate = SAMPLE_RATE_88_2K;
> +		break;
> +	case 96000:
> +		config->sample_rate = SAMPLE_RATE_96K;
> +		break;
> +	case 176400:
> +		config->sample_rate = SAMPLE_RATE_176_4K;
> +		break;
> +	case 192000:
> +		config->sample_rate = SAMPLE_RATE_192K;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	switch (hparms->sample_width) {
> +	case 16:
> +		config->sample_width = WORD_LENGTH_16BIT;
> +		break;
> +	case 24:
> +		config->sample_width = WORD_LENGTH_18BIT;
> +		break;
> +	case 20:
> +		config->sample_width = WORD_LENGTH_24BIT;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	switch (fmt->fmt) {
> +	case HDMI_I2S:
> +		config->select = I2S;
> +		break;
> +	case HDMI_SPDIF:
> +		config->select = SPDIF;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int it6162_bridge_hdmi_audio_prepare(struct drm_bridge *bridge,
> +					    struct drm_connector *connector,
> +					    struct hdmi_codec_daifmt *fmt,
> +					    struct hdmi_codec_params *params)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +	struct it6162_audio config;
> +
> +	it6162_audio_update_hw_params(it6162, &config, fmt, params);
> +	it6162_enable_audio(it6162, &config);
> +
> +	return drm_atomic_helper_connector_hdmi_update_audio_infoframe(connector,
> +								       &params->cea);
> +}
> +
> +static int it6162_bridge_hdmi_audio_startup(struct drm_bridge *bridge,
> +					    struct drm_connector *connector)
> +{
> +	return 0;
> +}
> +
> +static void it6162_bridge_hdmi_audio_shutdown(struct drm_bridge *bridge,
> +					      struct drm_connector *connector)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	it6162_disable_audio(it6162);
> +}
> +
> +static enum drm_mode_status
> +it6162_hdmi_tmds_char_rate_valid(const struct drm_bridge *bridge,
> +				 const struct drm_display_mode *mode,
> +				 unsigned long long tmds_rate)
> +{
> +	/*IT6162 hdmi supports HDMI2.0 600Mhz*/
> +	if (tmds_rate > 600000000)
> +		return MODE_CLOCK_HIGH;
> +
> +	return MODE_OK;
> +}
> +
> +static inline int it6162_write_infoframe(struct it6162 *it6162,
> +					 const u8 *buffer, size_t len)
> +{
> +	if (len > DATA_BUFFER_DEPTH)
> +		return -EINVAL;
> +
> +	regmap_bulk_write(it6162->regmap,
> +			  OFFSET_DATA_BUFFER, buffer, len);
> +	regmap_write(it6162->regmap, OFFSET_DATA_TYPE_IDX, len);
> +	it6162_infoblock_host_set(it6162, HOST_SET_CEA_INFOFRAME);
> +
> +	return 0;
> +}
> +
> +static inline int it6162_clear_infoframe(struct it6162 *it6162, u8 type)
> +{
> +	regmap_write(it6162->regmap, OFFSET_DATA_TYPE_IDX, 3);
> +	regmap_write(it6162->regmap, OFFSET_DATA_BUFFER, type);
> +	regmap_write(it6162->regmap, OFFSET_DATA_BUFFER + 1, 0x00);
> +	regmap_write(it6162->regmap, OFFSET_DATA_BUFFER + 2, 0x00);
> +	it6162_infoblock_host_set(it6162, HOST_SET_CEA_INFOFRAME);
> +
> +	return 0;
> +}
> +
> +static int
> +it6162_bridge_hdmi_write_avi_infoframe(struct drm_bridge *bridge,
> +				       const u8 *buffer, size_t len)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_write_infoframe(it6162, buffer, len);
> +}
> +
> +static int
> +it6162_bridge_hdmi_clear_avi_infoframe(struct drm_bridge *bridge)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_clear_infoframe(it6162, HDMI_INFOFRAME_TYPE_AVI);
> +}
> +
> +static int
> +it6162_bridge_hdmi_write_audio_infoframe(struct drm_bridge *bridge,
> +					 const u8 *buffer, size_t len)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_write_infoframe(it6162, buffer, len);
> +}
> +
> +static int
> +it6162_bridge_hdmi_clear_audio_infoframe(struct drm_bridge *bridge)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_clear_infoframe(it6162, HDMI_INFOFRAME_TYPE_AUDIO);
> +}
> +
> +static int
> +it6162_bridge_hdmi_write_spd_infoframe(struct drm_bridge *bridge,
> +				       const u8 *buffer, size_t len)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_write_infoframe(it6162, buffer, len);
> +}
> +
> +static int
> +it6162_bridge_hdmi_clear_spd_infoframe(struct drm_bridge *bridge)
> +{
> +	struct it6162 *it6162 = bridge_to_it6162(bridge);
> +
> +	return it6162_clear_infoframe(it6162, HDMI_INFOFRAME_TYPE_SPD);
> +}
> +
> +static const struct drm_bridge_funcs it6162_bridge_funcs = {
> +	.attach = it6162_bridge_attach,
> +	.mode_valid = it6162_bridge_mode_valid,
> +	.detect = it6162_bridge_detect,
> +
> +	.atomic_enable = it6162_bridge_atomic_enable,
> +	.atomic_disable = it6162_bridge_atomic_disable,
> +	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
> +	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
> +	.atomic_reset = drm_atomic_helper_bridge_reset,
> +	.atomic_check = it6162_bridge_atomic_check,
> +
> +	.edid_read = it6162_bridge_read_edid,
> +
> +	.hdmi_clear_avi_infoframe = it6162_bridge_hdmi_clear_avi_infoframe,
> +	.hdmi_write_avi_infoframe = it6162_bridge_hdmi_write_avi_infoframe,
> +	.hdmi_clear_spd_infoframe = it6162_bridge_hdmi_clear_spd_infoframe,
> +	.hdmi_write_spd_infoframe = it6162_bridge_hdmi_write_spd_infoframe,
> +	.hdmi_clear_audio_infoframe = it6162_bridge_hdmi_clear_audio_infoframe,
> +	.hdmi_write_audio_infoframe = it6162_bridge_hdmi_write_audio_infoframe,
> +
> +	.hdmi_tmds_char_rate_valid = it6162_hdmi_tmds_char_rate_valid,
> +	.hdmi_audio_prepare = it6162_bridge_hdmi_audio_prepare,
> +	.hdmi_audio_startup = it6162_bridge_hdmi_audio_startup,
> +	.hdmi_audio_shutdown = it6162_bridge_hdmi_audio_shutdown,
> +};
> +
> +static int it6162_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct device_node *np = dev->of_node;
> +	struct it6162 *it6162;
> +	int ret;
> +
> +	it6162 = devm_drm_bridge_alloc(dev, struct it6162, bridge,
> +				       &it6162_bridge_funcs);
> +	if (IS_ERR(it6162))
> +		return PTR_ERR(it6162);
> +
> +	it6162->dev = dev;
> +
> +	ret = it6162_of_get_dsi_host(it6162);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = it6162_i2c_regmap_init(client, it6162);
> +	if (ret != 0)
> +		return ret;
> +
> +	ret = it6162_init_pdata(it6162);
> +	if (ret) {
> +		dev_err(dev, "Failed to init_pdata %d", ret);

Why do you print error message TWICE? Once here and in called function?

> +		return ret;
> +	}
> +
> +	it6162_config_default(it6162);
> +	it6162_parse_dt(it6162);
> +
> +	if (it6162_detect_devices(it6162) < 0)
> +		return -ENODEV;
> +
> +	if (!client->irq) {
> +		dev_err(dev, "Failed to get INTP IRQ");
> +		return -ENODEV;
> +	}
> +
> +	ret = devm_request_threaded_irq(&client->dev, client->irq, NULL,
> +					it6162_int_threaded_handler,
> +					IRQF_TRIGGER_LOW | IRQF_ONESHOT |
> +					IRQF_NO_AUTOEN,
> +					"it6162-intp", it6162);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "Failed to request INTP threaded IRQ");

Drop, just return ret;

> +
> +	INIT_DELAYED_WORK(&it6162->hdcp_work, it6162_hdcp_work);
> +
> +	mutex_init(&it6162->lock);

Best regards,
Krzysztof


