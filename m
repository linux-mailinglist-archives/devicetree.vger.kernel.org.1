Return-Path: <devicetree+bounces-269041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PX6zNnYWoWkUqQQAu9opvQ
	(envelope-from <devicetree+bounces-269041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:58:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 343D21B2716
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56E0330EC578
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 03:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2812C33D50E;
	Fri, 27 Feb 2026 03:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G1NOXs9i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5AE33D4FF
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 03:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772164723; cv=pass; b=FzuPJ+Dche/lBgvvirsEm8JY/tD0vx7kYXPRJll4jVAoLstTqa3GuRvGszO6Q4Pp7rNPPMNSaXdOXfiFtNf1mwesqcxYHlwI9Qw1+eAre3dGwEG7GNtcitoaBMLcmsdZT5gYa48kDdeP89+39iOQaoeVueUtCBTnfVzfzo2R968=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772164723; c=relaxed/simple;
	bh=p3CbJ3mHKzHIRasaFuKXvprF0Md9KRjhSS/F3cT0x3A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WYYXd3Q5Gu4sS7dESNjwK1YfwFJmVGnu1IiZ9qcjQFl6HLnM9YE6G0Xlf6DJUTchjlPWp+NS5RZakC6zwL0SA1HceuJ4Y31J39M1ZeBibLOKaqd7LDiWR6Jm52BpcoGdM06dGBIHVIPUsfWLRJoUoUZUnBJcfhBEhYAkdlI+yoU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G1NOXs9i; arc=pass smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65f92a597a1so2660794a12.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 19:58:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772164720; cv=none;
        d=google.com; s=arc-20240605;
        b=O+ZFz5TBdZ3e2e3xSvpGkNSdsXydp9TEPhfjVx0RUkBTwKG3bwbNpIR4V6/fSFiyxN
         lHs0Fpmd6cYeNQ7/QJfrcWqgF1Dh2I53tYAX/mFWh5sqwwrYaeb8LAB1Z91gFJtPnjD7
         //1D5PXZnLiH+2y0bjum2+kXVMV9QN6Nsv1w9k0G1CveaZQlCr666zda2OEqFSI5em9r
         Vbx2AANNHAZAADFuOAn5gUbuEPvBIqjgS24m6ZS4rJb/nq7RcJ8oIJwKoL9KwzobxeWl
         ubLg7+YOfA2V3NxBuWe7NhdgeI2UXX0KKCaCGo8dSGn7bcZ5/rtrOUWtY2XzZn2l7+Va
         GGZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UDbsVEKZhLBEvaXz/piLWHN8Be3D0IK5o5PnFyICBEw=;
        fh=1e4E2GZYr8iLWDd1+GHJX6n19Y0E8TM27MBs4au0fcI=;
        b=OmcUr8oHlsulAiCNNXXny7pgDgoSH85V4FCtTyf2WazD7vCR6UTcctELthmpnkx+ts
         57NW/FVmf6/bK3W+eSQx+ai3nszaxsiXfbLst7+N7Dk9Lm4fvtQfM8FeMlKYjmlLnJZK
         GUC1kgz7teurEFEaY1H8Zet4bBxzMAH6yVhg01Wff+PUgrh8t9soc7ZsuxuT3WAMhqSv
         d41r775ID8UxdiG7uMOCJ3NvfPlnqNwpI+V9VSq97QgfkEzmvyQL1jf7CeHWkL7LHcY7
         xXX03loXjTg5tvYvXvWOaDPysKlih3D56GaOepI0MtDhyvSohl7DKBsM3SjWOmAxunG7
         J5uA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772164720; x=1772769520; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UDbsVEKZhLBEvaXz/piLWHN8Be3D0IK5o5PnFyICBEw=;
        b=G1NOXs9ita98o5LL2VdwzN+p3ynIo/6dr5HtwcTWsTi4zLlSPQpz9Z4E5LI9bdlCSX
         fAJJ+j68O+YE8S220T7lpfnO87EIyoaHjrPDU8jVjFo3q2Ovo2CWvqKl533uiiymUT+u
         45oEbni3wwTvw0OXXCPixAWtwzz3V+E+t6qLqcP4KWzW1BM1iGjBr2mTUe+vg5Mk21Gu
         vJAgI7oGaLSW5NdayH0+BrHtRYIF7rtG++x3UXWrJJG0lYh5RIhglwDzF72484v7fVVq
         Op09WNitJnut+XPEno+sILgQfBSQjLVBzlDYU3xbvH9Cn68u31POY5paREiKlhkaa4p0
         v8Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772164720; x=1772769520;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UDbsVEKZhLBEvaXz/piLWHN8Be3D0IK5o5PnFyICBEw=;
        b=sq4v82HQdWZa9OBoDK8GEu13/BcH7bSDrJ2yewRI/F4c08ZaRMa2erJWFlLD0uDjm6
         GweRSi1b+QN8ne0qvyPtjIptT1RGY17k3ysYfkUBxNQOuTG6siM+zMxV78C46A6NrCRm
         RYo4ohcwO/vklIyIRsy0gUz5AlArO16dPuR+bEim0+cLqadeFM6S/KSkFzLqT3kBOWgI
         NmufKdlWv/F8HUMo/20oGFHsUeCx8XbYM5JhhITg72RxRwxAHYtuV3rhGvHWzIqs6RZQ
         InprGwFxmOjqWzvbLb8KHUhJ6FkH1AMsVgbIHmazqqN3G0E/wZEIWfrHfuHJcV8+thWQ
         Ov5A==
X-Forwarded-Encrypted: i=1; AJvYcCUNjXuLtD2Bi/L7CKF1+07TZLJ/qa67HzMPsXTqC6/HXvrqhgKQEQp3ynH/3rfISMegZ47U13nYz+WE@vger.kernel.org
X-Gm-Message-State: AOJu0YzW4D6rPEfjB28NUnmEvtzzIivODAFD6WK59ogFfYZHAyoy4twY
	wm6HBBzP9e5eKTRp1xsMEpenHVk+7OWfhfkjeHkOe3oluQjOqGbcSSatoSYAXHYs7j+K1m44v9r
	nRFp4FLh7OXtdJ2WlCxgKhKCKXVJBp9A=
X-Gm-Gg: ATEYQzxZNlrT5M6qKoN8Mtd3eOL6RUN1UXHyyCRVNZ5xf5H1nEgRa8uqo5NhoHlheEP
	9pRerHcXrwTCgmXa+/hMInenzsqG0FaFCcWeo888axsx8tp7fN9Tc0LNJS1VtF+ssjQTCltZGJZ
	gOcLegRfoZh5GiUjA49+kpmZkSmZDDcVj5nIKihOPr3WMpCumXxIKqWy77R4uGWkKdRLZGJI4v3
	SoBxzXXxZ6W+W+wnqnTh3v77i4gj4y7ywXn+2af12iId1fGlrolxg0fx1Bo14LFxURekrrY++gs
	NaFEmHs=
X-Received: by 2002:a17:906:fe4d:b0:b86:e938:1b21 with SMTP id
 a640c23a62f3a-b93763b6903mr73471866b.23.1772164719886; Thu, 26 Feb 2026
 19:58:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260129022910.3942028-1-onlywig@gmail.com> <20260129022910.3942028-2-onlywig@gmail.com>
 <aXsdyzZEUaVzC34W@shlinux89> <CAPStFe7ASmYxJdDorJ0KAerfTH51ioZ=89F8fRcs6fBVqqhdUw@mail.gmail.com>
 <aZ4HrSNp32lbnVT-@lizhi-Precision-Tower-5810> <CAPStFe6sFCo2-+9ataPBy9pvEUo_uZ5G7XNA_8jH+sF6=FNOpw@mail.gmail.com>
 <aZ8SAvjCvTyLNi8P@lizhi-Precision-Tower-5810>
In-Reply-To: <aZ8SAvjCvTyLNi8P@lizhi-Precision-Tower-5810>
From: Wig Cheng <onlywig@gmail.com>
Date: Fri, 27 Feb 2026 11:58:27 +0800
X-Gm-Features: AaiRm51WYOya2X-nIX6UgHUWlRFoVIP5ReV9iuqHFak9xmEpTugEBlDhZEMDjhs
Message-ID: <CAPStFe76LVHBrx57_WETToziN+DJq3pz6gpPm7VBaLRjXoxfPg@mail.gmail.com>
Subject: Re: [PATCH v4 1/1] arm64: dts: freescale: add pixpaper display
 overlay for i.MX93 FRDM
To: Frank Li <Frank.li@nxp.com>
Cc: Peng Fan <peng.fan@oss.nxp.com>, shawnguo@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, zaq14760@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[mail.gmail.com:server fail,devicetree.org:server fail,0.0.0.0:server fail,sea.lore.kernel.org:server fail];
	TAGGED_FROM(0.00)[bounces-269041-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[oss.nxp.com,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,0.0.0.0:email]
X-Rspamd-Queue-Id: 343D21B2716
X-Rspamd-Action: no action

>
> On Wed, Feb 25, 2026 at 10:11:02PM +0800, Wig Cheng wrote:
> > >
> > > arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtb: display@0 (mayqueen,pixpaper): spi-max-frequency: 5000000 is greater than the maximum of 1000000
> > >         from schema $id: http://devicetree.org/schemas/display/mayqueen,pixpaper.yaml
> > >
> > > Does 1000000 work for spi-max-frequency? or need update binding doc?
> > >
> >
> > Both 1MHz and 5MHz work on i.MX93. I chose 5MHz for better refresh
> > performance, which is within the LPSPI3 controller's capabilities.
> > The 1MHz limit in the binding is a conservative generic value I think.
>
> Okay, let change to 1Mhz first. we will update it after updated binding
> doc.
>
> Frank

Hi Frank,
I've sent v5 with 1MHz as you suggested:
https://lore.kernel.org/all/20260226144819.3428730-2-onlywig@gmail.com/

Thanks for your help,

Wig

