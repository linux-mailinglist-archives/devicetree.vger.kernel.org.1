Return-Path: <devicetree+bounces-271308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDPtDYPFqGlaxAAAu9opvQ
	(envelope-from <devicetree+bounces-271308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 00:51:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5939420925E
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 00:51:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8FB82303CDB1
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 23:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835BB374745;
	Wed,  4 Mar 2026 23:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JeQDzC1m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FAD370D5C
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 23:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772668285; cv=none; b=BuZjkmh0XxUymPnN21ySMEkaON+tFzNWDrf5u9PJENZS87OuhbefLqWuTGppHCrP9bCLPfoNkrhQPg9mCSJj4/gtyrnKUJFKuQEAzqghg10L0KB0gCFJveu5kGHSNh7ar/1PHAq67PoKGDKI83aPTnUDR6QLqoE+1CRtS92FfN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772668285; c=relaxed/simple;
	bh=9mVxnKjSFYiBuhNl/RjgU/loEcC6J5udkYZhHtn14L4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QOX+nQcUF8ZVtGjme7535QtJrS9EJz3hIxwTT4dqEKCyGnP43Ux3PTF43QASmgBdEWni2wSSNesL5/gPjrMXvAdQWDFajZIPBI1ACR7PWO6i6OWcdJYZEnwutIAjRugCLaaFR2E44FwAkNGErbS1s5LrrPFBvEBDFduAVg1CNgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JeQDzC1m; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-503347dea84so80271071cf.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 15:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772668283; x=1773273083; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4FxY1mP5rHuQJee4LHID4+UTaMgFOvJujP6Xo1yweSM=;
        b=JeQDzC1m8DLtRNFTSgRRrApsgFrXCVU43HANgLXZqrj9mstUK/o1JZC88TqBBIRm+R
         P2wUmS4rnysvaKQr1TfhSctKXpICbiTSoQayR0igUxBqQWKwg0KgcTDecAcityxELTju
         DtZFMghoJSM5M4FFUqIbxhXB2lVCSdkYaIuvuO/S8OFN/GDFOhYBvqjqiMCe+fbJWq+b
         lfvq7S7fPjvKAO8JqzwjLrd+8ZpbG01i38R/DzXZ5vpNxsM65BMBUbdadls852uqAcjE
         HP3QzvbOp8Ej190zoIfo4qFMnGFsEKsr7PywQmCM2081ClVbH/gjCk6PL1W+EWgB6+5P
         CsBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668283; x=1773273083;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4FxY1mP5rHuQJee4LHID4+UTaMgFOvJujP6Xo1yweSM=;
        b=B/v7YZX+sOFF0A2G/vSMdum03PoHgMHW8dppuzrfz2cDZRKRFPn5JNbgxb8CMb7ujA
         a5Pa60Y3cSf47Q3YmDZPr7KN0Z55Gg1fG6nn3Wr7XSUyMNXGOVa5mJut4+dCLt/QDEjg
         RQM9gO7cxQr7bCf/O6UWgEcx4Qg2EOizFasPtzbLDaohVu8iNtOqZebK3jLUXQUTOGp8
         DeKvX4ltFVyMPYdTGakxcps9jVeA7BkFisAseDm9PkStg18Dz6a10yP3L7X/LtxzzaoT
         9HzuW+QPLCSi/v8RCTkp30bHMw5Vp9WmjuPcVAD0zFFT5n+XzxMIVqjM0p8Vz2Aq4FVB
         saPw==
X-Forwarded-Encrypted: i=1; AJvYcCWcfIpLAALzz++vMgU0pg5D8WQkYAZ6GPb0sZlBtu7I4dEiMr+DHkTdv3MuATZdFapwuhzVzkA3vq9G@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/S1gt6jGELnOi+uZUw07xaoJG1VaIzuFLUc56PiU+fG3QtYvD
	DbBYVvbR0Q9WC3OfvI8OKEHA3YVitRoysNsvZySp8M5pMKFSq7qsNgiN
X-Gm-Gg: ATEYQzyv5dN4ouOgroK3GZPZwkTYHXAMpttZhAfLEgVrNsgGbsKRrxfyLjcvO3t+m8n
	8rs9OmOn0U32idhADqvaK8hIyxpOtpNCc7zHr4Gkzg+PcsH56Joq1fx3WTYidE3iPFjyE+2BpSR
	iMGnF5MfFPvq++ee5eFUJ6Q2lpRKf2sghNE29kefM0pj60NpJ+xIqWUFimbdfrTqOPu7rItvL+K
	EZ5a46gm4+EdYQ/VbpeSlVn6+UvSc61Nr5HMko1E7bF80qeeYPqMtvoSyuLcJIANVE4jKwy1AAN
	nf1+4RqfF+LrK0T36R2vC35pp9Y3Md6mZPngjVHKNqlN70CR/3nbEgHp67866SYnCQhcxPfYPee
	LBbhBjGy/s4XgqV3aX7XgCWtChVRqzgWrOUu0c771IQJlmy4/GDoubQn2qY7gK7SNzWEZ86Cn7I
	ijCugtluaBc43XAxyMgm+0WJtWJ8athc6+/I3PHqch7vpHZiJmViH/tfnlOvGuvfdhmqj9vvqSo
	9pGXdyOT42h/pQ=
X-Received: by 2002:a05:622a:148c:b0:4e8:b446:c01b with SMTP id d75a77b69052e-508db3c3e38mr51561231cf.61.1772668283201;
        Wed, 04 Mar 2026 15:51:23 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-507449add38sm166381371cf.13.2026.03.04.15.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:51:21 -0800 (PST)
Date: Wed, 4 Mar 2026 18:52:02 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sdm670: add lpi pinctrl
Message-ID: <aajFohvO4En-U17W@rdacayan>
References: <20260210021109.11906-1-mailingradian@gmail.com>
 <20260210021109.11906-4-mailingradian@gmail.com>
 <2b3d9528-56d0-407f-bd3f-e805cfdea5e3@kernel.org>
 <aYvMCCWxVPXQeRCZ@rdacayan>
 <3698abdd-e864-47f1-8041-fb129389d90c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3698abdd-e864-47f1-8041-fb129389d90c@oss.qualcomm.com>
X-Rspamd-Queue-Id: 5939420925E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271308-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 10:08:39AM +0100, Konrad Dybcio wrote:
> On 2/11/26 1:23 AM, Richard Acayan wrote:
> > On Tue, Feb 10, 2026 at 08:42:59AM +0100, Krzysztof Kozlowski wrote:
> >> On 10/02/2026 03:11, Richard Acayan wrote:
> >>> +		lpi_tlmm: pinctrl@62b40000 {
> >>> +			compatible = "qcom,sdm670-lpass-lpi-pinctrl";
> >>> +			reg = <0 0x62b40000 0 0x20000>;
> >>> +			gpio-controller;
> >>> +			#gpio-cells = <2>;
> >>> +			gpio-ranges = <&lpi_tlmm 0 0 32>;
> >>> +			status = "disabled";
> >>
> >> Why is this disabled? We disable blocks needing external resources or
> >> being busses/connectors. This is not the case.
> > 
> > There are reserved GPIOs on the Pixel 3a. Since commit 4f0d22ec60ce
> > ("pinctrl: lpass-lpi: implement .get_direction() for the GPIO driver"),
> > this can't be probed when the reserved GPIOs are unspecified.
> 
> Are all of them reserved?
> 
> Does gpio-reserved-ranges help?

Yes. It would need changes in dt-bindings and in sdm670-google-common.dtsi
(introducing a dependency on Pixel 3a XL support).

