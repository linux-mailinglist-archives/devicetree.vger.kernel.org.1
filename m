Return-Path: <devicetree+bounces-270060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBi7B7mgpWmyCwAAu9opvQ
	(envelope-from <devicetree+bounces-270060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:37:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1411DAFB6
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 085AA3005A8C
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 14:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAEFE3FFAB6;
	Mon,  2 Mar 2026 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SKIVQpJ7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KeNCzGK+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C083FD156
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772462254; cv=none; b=uwbIt0XHBu3Y85mOeVL7osL3SSasXmRyILbthQ8kfvWip7psdWF9zqpbpJRqJlR1mYZmLceb216VFhMzQtw2/vQelbCRXLmyg78frVrNSj/FUx2RgckPUfqMViDqVaWhNSRIlNKn3Cky2FbKtC0B9OE3PNdZVKO3a0SNYBN2xUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772462254; c=relaxed/simple;
	bh=uhmZOAonJxvgIVsaIjWMu5kW5c56z8Y/QRgKebmd5CY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CiePmHkMAr5tqzjJMK5KbMa5cWLV7wFRivdxw/MW+ib4HvGvVRUO8Y6ByotLIsiC7Nvwzf4A4q4t5ONZ/IUl70R1Qai6XaxBsUV0FoPEArbBQrIrCW4N4LXT0zfRyTuEKOi+b2H/QY42FjSPuymcR8dyQcKClv+4aL8TAKqyY3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SKIVQpJ7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KeNCzGK+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622EO5do2732643
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 14:37:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OMzhOSPZAkPm6DsCJVirv509
	Szfr1rXCfmzumJhk5v4=; b=SKIVQpJ7tT+ky/J4IcQs3/qpR8VFrt+ykzEUiGpB
	PVrCHN8UoLhk1deP5TEv9HBbKn70fMFXQUbvZ8TFUHIARL0QU/N0jZyufyH14rYG
	p2wnz6LAiJYCqCmzQKKVurQ90+hmm62GVfxh+jX4uozhOKZFjvAZwzV276Hwho1m
	qYlj+MV9Qi1AAVQamvZFw5gcozzUqTDqnFL6t0CLBqUOhrhnb/ZDiHq0tCaLcqEl
	Bvf/HGmpIuYe7+XC05FQhb3EwnkOdkl42qNFXFYLQ9MFFBHknkio8gZrneYtY1an
	PIVwqODXGNtGI/r5p1s/hAiyIETg1BEZUy1j1gl4BQq+YA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cmgbauqm8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 14:37:32 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3598d4b19deso3739961a91.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 06:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772462252; x=1773067052; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OMzhOSPZAkPm6DsCJVirv509Szfr1rXCfmzumJhk5v4=;
        b=KeNCzGK+Clc5aMDpFqOV8kWJg49nnhJ4kdHhF/DmZUXVclNAlgs+9qXIvzEtL8SS04
         O25YM/1Bx8fhatfYdT6/2WUQYfZxWBrQKsbSahMbr1dl5CSlgQT8VJCWkMKDAlDLNCNW
         lUSQ0NyV0Ggp3Ih/9YHk0ULVTtNeZyhX+mA22wrlAEjA5zJiuKg8zbqubMIIgfKqyUbe
         LRq7a26bGMDI0TRCzSOIeWsdYWinSwC06E83fR1V+r9ySQpyDGbhIplHf9Fa4QQa4dVs
         ifVbfWEfyFFxN8DO3yI5JAGKhEFNsgnGdCfx8C9Q9VNv0b5VyW6ypySFo5n4zm3TznC9
         DVEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772462252; x=1773067052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OMzhOSPZAkPm6DsCJVirv509Szfr1rXCfmzumJhk5v4=;
        b=nmFyic3VTn/N1e2m9bsktx9+UZkg/zZAD9vIHEJi2rlDrAlwBpMZLobA4swGHrAhC6
         dlUtdwux5LvfpN+FtQD+IwWhJOrQ2gpIE0GL+hgZxVirFqjC2421OZ0zA/b25ldTTUJ9
         PwLjR6JwqPVmKRtI7xH7JtTPbrlM82LV5wkDBtKDKNaUgoc8Q02WHcYbXUOqXcem7ZQH
         4DR5hfGTgNCo5aukYYDOvRNlTSo56XrY2fvQJHOmRrlZT+G//MOZwWryV/PnVBElC9sP
         d0rKezcUdlK/2uxcvhMe1/nk9cDlpiTetOFPAdcFcK/p4BWVbAgvwPqpQrVZY4GPzz4v
         dBhg==
X-Forwarded-Encrypted: i=1; AJvYcCW8lbXkCV8Gk90jBoVj437wvVI8UAjL4BBbA47edICr489imfzqJKz9kBTN4xkASO4GagQaDd8oyk5g@vger.kernel.org
X-Gm-Message-State: AOJu0YyuDiI0wOMC++0LcgD4trXvGIMsRjTwH/2QlM9ji8iqMYacoDLA
	x+KDRWlRIA/IFHPvvS0gBeCsTBuD736ITsSwQPKTq4B+Yh0Sh+xl7QKkpKUgaE5L8vQAQLD8pDN
	M7EZBNqt42+zkoNJOLmb33IyV20DR3K0E3tnIbQmMY8igjNS4mT5xPFMNMTrtqt85
X-Gm-Gg: ATEYQzzYL6JVvPoWmrTXOpzHEnfnb4rx292kxLbR+7HDvqoyHgpPP9E04ojosdoj/E6
	uHqs0XY7FmHshJV/c3cG6CSU6PI98TFPWREvOZlP/6V6bsezBINo/tbtgk8b2LIcIDF7y+WqCP4
	kghUQXaRGFv21sECZTFb+OWcbvjEgTO77nD2DgxcRwjH/6hMxh3eV9o4fd6r1lcc1GzFmg0Wnaf
	E1QXfGUs9JhugGxILR3vBu48hBhSuZOtPVl/6U+17ApRqRrjz19peZ12+d8xduzhHYPke6SYqKl
	B7U6rGna9W7wRqlvsO1qJrjsoZNJvRLubpEEpLGoEVHreNPKrSWjdJpp7YXzqbW7MbAYp5ZNBR0
	WeiaCwrOLrYgg7ZJvoNvDPVusYIZnJU7jdgjAEJ1rY3UKMmlY555RaB3y
X-Received: by 2002:a17:90b:4b50:b0:354:a662:47ff with SMTP id 98e67ed59e1d1-35965d188d6mr10849587a91.35.1772462251252;
        Mon, 02 Mar 2026 06:37:31 -0800 (PST)
X-Received: by 2002:a17:90b:4b50:b0:354:a662:47ff with SMTP id 98e67ed59e1d1-35965d188d6mr10849565a91.35.1772462250634;
        Mon, 02 Mar 2026 06:37:30 -0800 (PST)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3598ef9177dsm2870948a91.12.2026.03.02.06.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 06:37:29 -0800 (PST)
Date: Mon, 2 Mar 2026 20:07:23 +0530
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH 0/3] arm64: dts: qcom: monaco: Enable SDHCI storage
 support
Message-ID: <aaWgo/FYDhCVvaX/@hu-mchunara-hyd.qualcomm.com>
References: <20260227105055.2364348-1-monish.chunara@oss.qualcomm.com>
 <ltuoonopd2fmxhxnfmezflwqicyagha3jchxl3inputbtnpvhm@gsgnsccr62pk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ltuoonopd2fmxhxnfmezflwqicyagha3jchxl3inputbtnpvhm@gsgnsccr62pk>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEyMiBTYWx0ZWRfX4DFvX2q+Nb+J
 U0IoctfzbISM82bOyfPdN7p8QWW9SxJ2ked1UsqYsmtkhvXu02EiXFz7mNbC7KBx3hlQYluxxJH
 /LK14Q1zNv8MIn70SwOtrtD0ok9n06wHX/lUByrU/X58nV8F3gZaFi8X/D1vkd4Lat5PxOnROBU
 5f6lfH2Tu7R6KrRyCglh6HcKffyinSWCZe/TWFvGyaGtLnR1K22sc9Sgr+CWkPdeO8QQQRhNd3I
 DNppv/Z5gjl9P5lmkSE8LXIyW3kvakowwdIhGX3NWGTkUtqRoAagoaoDoPIDuJlvDBgtPrtRdwF
 otSxY7K1Qpwi6s/wq9pilB8bHOxM+GnIyuIKO9306TbBGxdb3yG8s+YGH/V87z68ebSWFdtFrNC
 8erqTR8VcOL//X66bMcojLLTxjlxG6+HNEhteHj9cM3qGay3wTVwaAPpACAHUM474l0UXKCSF43
 zCzAnuDx8mhB8y42Nqw==
X-Authority-Analysis: v=2.4 cv=QfVrf8bv c=1 sm=1 tr=0 ts=69a5a0ac cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=U2YZr0DjLyW8uJ9i07MA:9 a=CjuIK1q_8ugA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: IIHa-39zzmt5nK2QMC2WNVJy5Wznic9J
X-Proofpoint-GUID: IIHa-39zzmt5nK2QMC2WNVJy5Wznic9J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020122
X-Rspamd-Queue-Id: 0A1411DAFB6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270060-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[monish.chunara@oss.qualcomm.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 10:05:32PM +0200, Dmitry Baryshkov wrote:
> On Fri, Feb 27, 2026 at 04:20:52PM +0530, Monish Chunara wrote:
> > This series enables SDHCI storage support for both SD Card and eMMC on the
> > Qualcomm Monaco EVK platform.
> > 
> > The Monaco SoC shares the SDHCI controller between SD Card and eMMC use
> > cases. Previously, the common SoC dtsi unconditionally enabled the
> > 'supports-cqe' property. This causes regression for SD cards, resulting
> > in timeouts and initialization failures during the probe sequence, as
> > the driver attempts to enable Command Queueing (CQE) logic incompatible
> > with the SD protocol.
> > 
> > To resolve this and enable full storage support, this series:
> > 
> > 1. Moves the 'supports-cqe' property out of the common SoC dtsi. It is
> >    now only enabled in the specific eMMC configuration where it is
> >    supported.
> > 2. Adds a device tree overlay to enable SD Card support (SDR/DDR modes).
> > 3. Adds a device tree overlay to enable eMMC support. This configuration
> >    also explicitly disables the UFS controller to prevent power leakage,
> >    as the VCC regulator is shared between the UFS and eMMC rails on this
> >    platform.
> > 
> > Validated on Qualcomm Monaco EVK with both SD Card and eMMC modules.
> > 
> > Monish Chunara (3):
> >   arm64: dts: qcom: monaco: Move eMMC CQE support from SoC to board DT
> >   arm64: dts: qcom: monaco-evk: Enable SDHCI for SD Card via overlay
> >   arm64: dts: qcom: monaco-evk: Add SDHCI support for eMMC via overlay
> 
> You are adding two overlays. But what does it mean? Does EVK has no uSD
> / eMMC at all, having both attachable via some kind of mezzanine? Is one
> of them attachable? Or are both cases present onboard with the correct
> one being selected by the DIP switch?
> 

The monaco EVK has both storage devices present onboard and the desired one is
selected via a DIP switch. The overlay selection logic would be based on a
fitImage metadata entry that gets populated at UEFI level by determining the
currently selected storage device (eMMC/SD) on the device.

Hence, this approach becomes robust to enable the user for using either of the
two mediums, without any additional requirement of reflashing any images.

Regards,
Monish

