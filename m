Return-Path: <devicetree+bounces-305474-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMZiOyyGHmqhkQkAu9opvQ
	(envelope-from <devicetree+bounces-305474-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 09:28:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DE3629B08
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 09:28:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 162B53026277
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 07:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 951CC35DD1C;
	Tue,  2 Jun 2026 07:24:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F9D357D01
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 07:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780385069; cv=none; b=SVjSySyS2YDov0eCn7jw+jfR/z1Pjv6tplBOgv4p3chxt7cpFR+HQH3fe+wdvp7JjvhaGObp9B3Wti4F8IYS/Pu5RrMZds3cFgC4iK5eT5IQ/c3RJFMQYzkTC3IqsLgXTuHxdiemJsf1/583+R/LlgTSte0dE2iEKJLSlrIQsIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780385069; c=relaxed/simple;
	bh=xVR6i/wkZm3v1BlOY7VOhc/ASssNk/Yg64LnnL3f0pw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EqPb3B3bDaQmI1QZHVWX2bUdw3O8SSXy5Mx9tCQYQZ1pmzpQfdO0sYEUO5gq/2BOOnW2ojW+OkU3dNzUlkJm+JodWgvABUsGAhwer9Hukbp9lBtELvGonLANfNcEmDYSyP6LHpuM/Gka8BdAeDHQbqmqWB96AW3K/6XRaibGflY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1wUJTe-0001hd-Bf; Tue, 02 Jun 2026 09:23:54 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wUJTc-000i8j-2h;
	Tue, 02 Jun 2026 09:23:52 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wUJTc-0000000Futw-2umF;
	Tue, 02 Jun 2026 09:23:52 +0200
Date: Tue, 2 Jun 2026 09:23:52 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, laurentiu.palcu@oss.nxp.com, 
	victor.liu@nxp.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/4] Revert "dt-bindings: display: bridge: ldb: Fill in
 reg property"
Message-ID: <n6akxiayi3g6gxcqhreb4iaohmeokoalnqup6h5r2fwdt4zijt@u2wyps55ayqm>
References: <20260504-v7-1-topic-ldb-fixes-v1-0-0125d937ff7f@pengutronix.de>
 <20260504-v7-1-topic-ldb-fixes-v1-2-0125d937ff7f@pengutronix.de>
 <20260505141538.GA2547282-robh@kernel.org>
 <2bl2mwpk57xgkuye2gydliymjkzikiovnb7ovnb73olwtfkjwn@byn3732grvnh>
 <CAL_JsqLYS1sgU680KNR60+OvtNwEVKWovht7K2APO3sqeJe6Nw@mail.gmail.com>
 <zbbez4lpme7szgnsd7fqufbuhmvcftw4sqrmwwwzyxu64i2ppb@fh2fgdkc6tat>
 <CAL_JsqJWyRPh_hmJW8p7+VvtcqpS0a_azjMO-PyQgkqQUfLAGA@mail.gmail.com>
 <uyh5s6g7bvuufnhfjrmungp5dbyllxfrgfzaxno22knpxxojmj@qqvh75ezblpp>
 <20260601222941.GA101404-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260601222941.GA101404-robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305474-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,denx.de,nxp.com,pengutronix.de,oss.nxp.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.910];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.2:email,pengutronix.de:url,4ac10000:email,0.0.0.1:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,0.0.0.0:email,5c:email]
X-Rspamd-Queue-Id: 92DE3629B08
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-06-01, Rob Herring wrote:
> On Wed, May 13, 2026 at 12:26:40PM +0200, Marco Felsch wrote:

...

> > Please see the below full example, is this allowed?
> > 
> > system-controller@4ac10000 {
> > 	compatible = "fsl,imx93-media-blk-ctrl", "syscon";
> > 	reg = <0x4ac10000 0x10000>;
> > 	#address-cells = <1>;
> > 	#size-cells = <1>;
> > 
> > 	...
> > 
> > 	bridge@5c {
> > 		compatible = "fsl,imx8mp-ldb";
> > 		reg = <0x5c 0x4>, <0x128 0x4>;
> > 		reg-names = "ldb", "lvds";
> > 		clocks = <&clk IMX8MP_CLK_MEDIA_LDB_ROOT>;
> > 		clock-names = "ldb";
> > 		assigned-clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
> > 		assigned-clock-parents = <&clk IMX8MP_VIDEO_PLL1_OUT>;
> > 		status = "disabled";
> > 
> > 		ports {
> > 			#address-cells = <1>;
> > 			#size-cells = <0>;
> > 
> > 			port@0 {
> > 				reg = <0>;
> > 
> > 				ldb_from_lcdif2: endpoint {
> > 					remote-endpoint = <&lcdif2_to_ldb>;
> > 				};
> > 			};
> > 
> > 			port@1 {
> > 				reg = <1>;
> > 
> > 				ldb_lvds_ch0: endpoint {
> > 				};
> > 			};
> > 
> > 			port@2 {
> > 				reg = <2>;
> > 
> > 				ldb_lvds_ch1: endpoint {
> > 				};
> > 			};
> > 		};
> > 	};
> > 
> > 	dpi-bridge {
> > 		compatible = "nxp,imx93-pdfc";
> > 		status = "disabled";
> > 
> > 		ports {
> > 			#address-cells = <1>;
> > 			#size-cells = <0>;
> > 
> > 			port@0 {
> > 				reg = <0>;
> > 
> > 				dpi_from_lcdif: endpoint {
> > 					remote-endpoint = <&lcdif_to_dpi>;
> > 				};
> > 			};
> > 
> > 			port@1 {
> > 				reg = <1>;
> > 
> > 				dpi_to_panel: endpoint {
> > 				};
> > 			};
> > 		};
> > 	};
> > };
> 
> Yes, this seems fine.

Thanks for the clarification!

Regards,
  Marco

> 
> Rob
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |

