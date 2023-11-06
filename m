Return-Path: <devicetree+bounces-14131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B27AB7E218B
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:30:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC2CE1C20B09
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8902B208BD;
	Mon,  6 Nov 2023 12:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88BBE1F958
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:30:05 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B101BA6
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 04:30:03 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qzyjm-0008I6-80; Mon, 06 Nov 2023 13:29:50 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qzyjk-0071dX-Jx; Mon, 06 Nov 2023 13:29:48 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qzyjk-000fiX-HD; Mon, 06 Nov 2023 13:29:48 +0100
Date: Mon, 6 Nov 2023 13:29:48 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Kamel Bouhara <kamel.bouhara@bootlin.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Henrik Rydberg <rydberg@bitmath.org>, linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	mark.satterthwaite@touchnetix.com, bartp@baasheep.co.uk,
	hannah.rossiter@touchnetix.com,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	bsp-development.geo@leica-geosystems.com
Subject: Re: [PATCH v3 3/3] Input: Add TouchNetix axiom i2c touchscreen driver
Message-ID: <20231106122948.le7y4xdwabnjkhgn@pengutronix.de>
References: <20231012074034.1090436-1-kamel.bouhara@bootlin.com>
 <20231012074034.1090436-4-kamel.bouhara@bootlin.com>
 <20231020120310.vrn6ew3fcg5e545w@pengutronix.de>
 <20231022193529.GC3072@kb-xps>
 <ZT9uJMExvf7B0gtR@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZT9uJMExvf7B0gtR@google.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Dimitry,

On 23-10-30, Dmitry Torokhov wrote:
> On Sun, Oct 22, 2023 at 09:35:29PM +0200, Kamel Bouhara wrote:
> > On Fri, Oct 20, 2023 at 02:03:10PM +0200, Marco Felsch wrote:
> > > > +
> > > > +static int
> > > > +axiom_i2c_write(struct i2c_client *client, u8 usage, u8 page, u8 *buf, u16 len)
> > > > +{
> > > > +	struct axiom_data *ts = i2c_get_clientdata(client);
> > > > +	struct axiom_cmd_header cmd_header;
> > > > +	struct i2c_msg msg[2];
> > > > +	int ret;
> > > > +
> > > > +	cmd_header.target_address = cpu_to_le16(usage_to_target_address(ts, usage, page, 0));
> > > > +	cmd_header.length = cpu_to_le16(len);
> > > > +	cmd_header.read = 0;
> > > > +
> > > > +	msg[0].addr = client->addr;
> > > > +	msg[0].flags = 0;
> > > > +	msg[0].len = sizeof(cmd_header);
> > > > +	msg[0].buf = (u8 *)&cmd_header;
> > > > +
> > > > +	msg[1].addr = client->addr;
> > > > +	msg[1].flags = 0;
> > > > +	msg[1].len = len;
> > > > +	msg[1].buf = (char *)buf;
> > >
> > > Please check the "comms protocol app note", for write it is not allowed
> > > to send a stop, so the whole data must be send in one i2c_msg.
> > >
> > 
> > Well I only have the "Programmer's Guide", I'll have to check that as it
> > really seems to works as it yet.
> 
> As far as I know we only send "stop" on the last message in a sequence
> of messages in i2c_transfer() unless it is explicitly requested with
> I2C_M_STOP flag.

You're right, I re-checked this again but this approach is still wrong
since the protocol does not allow sending the payload as separate
message. The payload must be send as one message starting with the
i2c-address of the touchconroller followed by the target register
address and how many bytes should be written followed by the payload.

> ...
> > > > +
> > > > +static void axiom_i2c_remove(struct i2c_client *client)
> > > > +{
> > > > +	struct axiom_data *ts = i2c_get_clientdata(client);
> > > > +
> > > > +	input_unregister_device(ts->input_dev);
> > >
> > > This can be part of devm_add_action_or_reset() and we could remove the
> > > .remove() callback for this driver.
> > >
> > 
> > Sure, thanks for the tips :)!
> 
> Actually input devices allocated with devm do not need to be explicitly
> inregistered, so you do not need to bother with
> devm_add_action_or_reset() and simply delete axiom_i2c_remove().

Ah I see.. so all devm_alloced...() device don't need that explicite
unregister. Thanks.

Regards,
  Marco

> 
> Thanks.
> 
> -- 
> Dmitry
> 

