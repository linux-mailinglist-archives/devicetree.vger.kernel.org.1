Return-Path: <devicetree+bounces-153856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF35A4E10C
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 15:35:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5962217C8D3
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 14:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C52E20A5DF;
	Tue,  4 Mar 2025 14:29:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from beeline3.cc.itu.edu.tr (beeline3.cc.itu.edu.tr [160.75.25.117])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8124A20B811
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 14:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=160.75.25.117
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741098597; cv=pass; b=mpQ87rEWpD9375dPS6UgOm3B3ll8WGEaehE8COlrNm8R7t1dtHJ+Q16jP0wzqqUHeJ8wrbQtejuqc1q6/+L3MfQjaWmNlBIDoDCFgiVUwHywFI19slKAewCvwU2PIC/4QZ0mRYCGs42DNEQ+sXCvy21Uh3q2Qpp/kCRtn6Wdebc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741098597; c=relaxed/simple;
	bh=4ybMusj+3erW2An8KjCkmALT3RbeQvIrvwKF/FIQxHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yvo+Sl+Q/dvO8h4sG4M8wk4OxAQPu5Ugj4MZtiVLlIUIo90XWr9Lji5A9kqSfwZiYs+jaXJeTZhSXhRerTARSbpvJ/ujKZbvVEv6hZZDVb13p0mQpUnv/so134/Fqc1A86lR7rNc0wscheMrtsU6ECwOr89S0RimCQAfnlHhQTM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=none smtp.mailfrom=cc.itu.edu.tr; arc=none smtp.client-ip=185.203.201.7; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=pass smtp.client-ip=160.75.25.117
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr
Received: from lesvatest1.cc.itu.edu.tr (lesvatest1.cc.itu.edu.tr [10.146.128.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by beeline3.cc.itu.edu.tr (Postfix) with ESMTPS id A67B740CEC84
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 17:29:53 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
	by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6dLX2hnRzFwd7
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 17:27:32 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
	id ABCB742749; Tue,  4 Mar 2025 17:27:19 +0300 (+03)
X-Envelope-From: <linux-kernel+bounces-541364-bozkiru=itu.edu.tr@vger.kernel.org>
Received: from fgw2.itu.edu.tr (fgw2.itu.edu.tr [160.75.25.104])
	by le2 (Postfix) with ESMTP id 138A8433E8
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:26:13 +0300 (+03)
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by fgw2.itu.edu.tr (Postfix) with SMTP id 9E7852DCE3
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:26:12 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42FE43A4C35
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 10:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA2391F237D;
	Mon,  3 Mar 2025 10:25:59 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137671EB187
	for <linux-kernel@vger.kernel.org>; Mon,  3 Mar 2025 10:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740997558; cv=none; b=OEPEGoAoK8PUvbR/ayBv435SUcxYmyYJZ6FlUHf8ajEW0Y7W8+4YIAm6et+kp5OVi3OvsohT9zxPATU91to7fpLJX/4u/YUjaGwe+9hHumvzTqyZgN6rvfz8f+bK+7hIUrh0lRgVYrsl0mtqJbLvr1V/vLhtzKdtEahVfTAOK/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740997558; c=relaxed/simple;
	bh=4ybMusj+3erW2An8KjCkmALT3RbeQvIrvwKF/FIQxHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WTD+jDyeQ41GcpXP6fizZLnMwADgP8eeBu/B449+pk22qOR5is0uTlvVh+moi0sGjmr7q4+vsJX67+YfSj8dJdRBDJPzBE8pwxLDlkaTgtfKDmkw1OcCBmX2EFeIfvGPUl75jqM87n3GTw+/UpsXSVT2TDKyEFuHNZscFl8/iuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tp2zX-0005YR-DZ; Mon, 03 Mar 2025 11:25:43 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tp2zW-003mIZ-0w;
	Mon, 03 Mar 2025 11:25:42 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tp2zW-00AhSx-0W;
	Mon, 03 Mar 2025 11:25:42 +0100
Date: Mon, 3 Mar 2025 11:25:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Junzhong Pan <panjunzhong@outlook.com>
Cc: broonie@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	festevam@gmail.com, gregkh@linuxfoundation.org,
	kernel@pengutronix.de, krzk@kernel.org, lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	lkp@intel.com, matthias@kaehlcke.net, mka@chromium.org,
	oe-kbuild-all@lists.linux.dev, robh@kernel.org
Subject: Re: [PATCH 1/3] usb: hub: add infrastructure to pass onboard_dev
 port features
Message-ID: <20250303102542.gbzhvnygj5ve5qrf@pengutronix.de>
References: <20241028214956.gmefpvcvm3zrfout@pengutronix.de>
 <ME0P300MB055370E97AB98D221B2E0782A60A2@ME0P300MB0553.AUSP300.PROD.OUTLOOK.COM>
 <20250106065202.d2qdd7zmwk4h645h@pengutronix.de>
 <ME0P300MB055308B1FC5F1544F906B72DA61C2@ME0P300MB0553.AUSP300.PROD.OUTLOOK.COM>
Precedence: bulk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ME0P300MB055308B1FC5F1544F906B72DA61C2@ME0P300MB0553.AUSP300.PROD.OUTLOOK.COM>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-kernel@vger.kernel.org
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for more information
X-ITU-Libra-ESVA-ID: 4Z6dLX2hnRzFwd7
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741703283.78094@yz38SW880RyBTOXgSp+pjQ
X-ITU-MailScanner-SpamCheck: not spam

Hi,

sorry for the late response...

On 25-01-10, Junzhong Pan wrote:
> Hi Marco,
> 
> Thank you for your reply!
> 
> On 2025/1/6 14:52, Marco Felsch Wrote:
> > On 24-12-31, Junzhong Pan wrote:
> > > 
> > > I recently encountered some kind of platforms using an existing onboard
> > > hub yet their HW don't utilize the USBPE port power control feature
> > > while the hub support it.
> > > Instead, we have another GPIO for controlling the vbus of those ports
> > > to cut the cost.
> > 
> > That's exactly our use-case too.
> > 
> > > Wonder any idea could use this driver considering the limitation of
> > > the usb compatible set the properties of onboard_dev_pdata hard coded?
> > 
> > Sorry but I don't get this.
> If the hub have 4 ports, but board only have one gpio to controll all those
> vbus at once, implemented as some kind of gang mode.
> 
> In this case, the onboard_dev driver may not respond to the
> USB_PORT_FEAT_POWER, but keep the supply always on except for the suspend
> states.
> 
> Do you have any idea how we handle this?

I can think of one crude workaround. Adding 4-regulators which use the
same shared gpio. This requires the gpio to be requested as shared if
that is possible.

Regards,
  Marco


