Return-Path: <devicetree+bounces-273086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CN5NEsser2neOAIAu9opvQ
	(envelope-from <devicetree+bounces-273086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:26:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F31D623FD9D
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:26:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 08A5D303502B
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 19:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93EE23EF0B6;
	Mon,  9 Mar 2026 19:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bbRa4em9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TzwyjWiS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461FB3EDAC5
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 19:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773084263; cv=none; b=MOVP8uAEf3/wg8Vihuv/duWRFWEgkjgMSi7yowJFXlnAbLperiH3rrsBuf45vj/PNe0ZBWdcl2EafxD4ebvEJULq24WpoTcF8dsQTFQ2l9j8Cn5qwMKkk2B/vIJxQ2EgT8BMpOG0PQ89KX2hlffG6twJw2Vd/zOU+DT+SUDIylc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773084263; c=relaxed/simple;
	bh=/DWqK356g8O39VyEBcMs8UovoNzwScJQ1yKL2GEMdGk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fJfAaO9okAFW2ZHmdZuqII4BeAnpsmuI8fPPUFoBPxbaPnfdmlMcy5cQsUa6Dmfo34AO1twsjVUUTcH2feZ35Atpqfh0Q9KDUrLzU+VmjRK7P7Ha0phnVUDNzwlr95++o7sME2Bu3sh9v9l+mib5sfQzX9dXzmILDK8ulu9Rrew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bbRa4em9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TzwyjWiS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HC7PH1921704
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 19:24:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c7/TFK2ou1RY6Bs6Xc6cyhsshTZZpRLyCspkXyVQmBI=; b=bbRa4em9NmyHX6+a
	RlcY5mDuigTTyJCSlDT/0aAWvgC7ezDp+4ichI89aR/6XPRKDPOiwh4NDdDshy4I
	UvgEUjcL5Q2HAjjmwQQrZ6job2JASFo/Z6rKeP5VaWmpbg+Ds9pmbeVWXodB6qjz
	5T06I24ql80Lxi2GAcmqErp90Tg+WpqCxxYKurmT9rXPtK+fkIO2lB6jDCsmF27r
	pIZjGPUCjHzPg5Uh+cn1Rxm4oRNYqfxZT8Q8JTktkvK8mkLJoRK1mqIXvCLoAPpd
	HZhHE/7b5OuX2EK7dls/e/FLohenbvDFcOoJUe2omqzg41do2Mm/owFZI0DrzXPt
	mn3JjA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csxy81a11-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 19:24:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd858e8709so1289673085a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773084257; x=1773689057; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c7/TFK2ou1RY6Bs6Xc6cyhsshTZZpRLyCspkXyVQmBI=;
        b=TzwyjWiSy1x6XgrkTL0+D9a9lENkgG+lMLCBsmAaQQmjMOraZxxeVo8SWTjOpZRmBE
         ocvdEPKt7Z+O+9QYTkhb9qlDT94+Ywb8GJ9K8C7bqME17GNsjK/LoYzod/xikC/7c4TK
         lLmPOHFH25g7cK1izZlPC7DcUk9nxevlbdeXxffmRwRt0cbs74n7mh/+m5+clnIdMofg
         WSVciV2WcUmxpyuXNUwu5FgUGX7/Msu+zPU+KLbERnRVUlLAhPXFJaSfyMEs2WMEL7uk
         ave8FU9NEXsUIj8pMnLo03d0BrK1Pnnbpyf4/MYJv7TIofQZaiFc+8LocESRpXqSnnQT
         2ToQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773084257; x=1773689057;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c7/TFK2ou1RY6Bs6Xc6cyhsshTZZpRLyCspkXyVQmBI=;
        b=ds5qbsiVphNMFjjYo11XTd/w1cXXqTpk4EbZ4vLh05iqgnHKOMOm8BikVzENZR4aFd
         od3vpSZrAthb21FSxVn7wKd41B4kqS3aYRg0ie1+Uf/+rLCA0+Pqfcp8w/RsyB9/R2cE
         MLZsk4fshRIGq3/+RtjA5UYVKi4PtY2E0BbX9b/UTnmONo72lYUYGpiFMTgUqdXDq8UD
         pVTV5ln4mIEhcS3EeabQbb6z5BxzYXt/jjpy9+3ZSoxg4gsJ9HKYJjUG1EWrmTJ9OS21
         PeslKRwWV9jZS3jpEUa8G+sqyXncTCvSIUnNybf4oQd92pW5UzAhQdnkg6+ZrEFeRIAS
         AAtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVr77EO5O5DbB5AYb4qsrJkX44FSTTZ747cgALWe0x8rQfdazW3dg/4H9d0UELTXhgv0Bs+qHc+jmFx@vger.kernel.org
X-Gm-Message-State: AOJu0YxPF6+qRNvLLn53t5BlvVyMTzb2NpNHk3S5g5S7+2On/93xMVgn
	zbIidU4ks1jGL43NGoKuQ6FZux7vTQB6RQ6nD22W/CPrqjqccTUxl6MT7Jv1S43aA0TzKqtAEoU
	vpEabgfCc2shREoUX28sScvYIxRHn2/0Yzv8gbv3pUzy9TbhAiPYxKZemJlrgtpZEzCbVD/BQ
X-Gm-Gg: ATEYQzzAthTKlLKMiK1goQg4UbktUCWa8HQFXVGchkRCdt4DLA1BpMoNO1yOAtyLuRh
	qB+LdvxbAtsOrRRdg0JrFEYK3zGkfecc87ukwTuJHY0vS1w3vmd8WGKKf6pMHQTnsEaVdfmN3vb
	5YrXvLzZQHPKFfuIvZVbygLkYdanYFA6DLaAoUObeFseXnLMQpwFjGv3UFkCAnjLAuz1WvAKmui
	APw76lHshMJEVlJReMjxpICJ1vrdEzCfG4Juuojxs/gdKgB+ln4RhPD//tvyWb2RhKu7xeY0ITN
	EHxnMo2QAODhrKI62P2abrYlcKH46p0EysraFIAqb1vmijnpfb4V2+bO+PAL4qYUrpunoUrgYL5
	293fGsDHtH9AAnW2JeEwPuHUBrFQMusiNLJJRlR7gPlLRdCcRHnJOaIRrL3DmbW5oDps5ANKwsf
	92VvLc4SuFsPTxfn3uSC6ELPCIrQWdRyN6Emk=
X-Received: by 2002:a05:620a:2699:b0:8cd:8fc7:831f with SMTP id af79cd13be357-8cd8fc79807mr330475585a.56.1773084257379;
        Mon, 09 Mar 2026 12:24:17 -0700 (PDT)
X-Received: by 2002:a05:620a:2699:b0:8cd:8fc7:831f with SMTP id af79cd13be357-8cd8fc79807mr330470385a.56.1773084256825;
        Mon, 09 Mar 2026 12:24:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d07dffdsm2284093e87.45.2026.03.09.12.24.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 12:24:15 -0700 (PDT)
Date: Mon, 9 Mar 2026 21:24:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        geert+renesas@glider.be, arnd@arndb.de, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com
Subject: Re: [PATCH 1/7] arm64: dts: qcom: monaco: Add HS/SS endpoints for
 USB1 controller
Message-ID: <y4itfqnbpii2ovptfoy63ck5vavoqyzklgezq5bemeczbaqfo2@vkxgo375ialv>
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260309152420.1404349-2-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260309152420.1404349-2-srinivas.kandagatla@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SvmdKfO0 c=1 sm=1 tr=0 ts=69af1e63 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=od1gnLZaB1Y5O4OfTGMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: tK9M4YmB1MAMCoLyJFaIiU6lL3PRwMsl
X-Proofpoint-ORIG-GUID: tK9M4YmB1MAMCoLyJFaIiU6lL3PRwMsl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE3MiBTYWx0ZWRfXyGNZFv4pYePh
 POPvqIEd/SOpAgHeV32c+dihbc+le0bdj1QQTEAYWPSeL0FJQdOQQfL8b4R0/ggaq/S/eqmN19X
 DwKp2nGy5xVGi4mL1zU9Mdzx2S+eihkSI+bFands/4DYgR61PADrV8SJ8dFQz+6ehjKda0lMIL5
 hsoC3GIzBEj4gRsw9ae8ivaYGTZaz7ZNNQ2fr24ADD4oGvHLEv/L+ipEclY0TSt+/ZZ75Wm9YC8
 VrTjQRAsD17mkSt/kPL71o1tWr+KB6KQdo6lSPDI6PqtAk3jXKd71tAJ/AE9jW9DewJLj7KDW00
 btscTW7ftgaZN25PG6pZMSeMveCRsdUQvBn5nU78km84F9sx/NoMsUoGKdT3UIh/imXc1k6I0or
 cI1AGEZZiENqXcx7C3Ys6VwFKBE6VfCj7CBIuUYV7pwTC5QWXdVfW6HYaiZRrRbGM2NeOdFmWt9
 HbHm0jI1hotJEbNEPug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090172
X-Rspamd-Queue-Id: F31D623FD9D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273086-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,glider.be,arndb.de,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 03:24:12PM +0000, Srinivas Kandagatla wrote:
> From: Loic Poulain <loic.poulain@oss.qualcomm.com>
> 
> Add a port node exposing the High‑Speed and Super‑Speed endpoints,
> allowing the USB controller to be linked through the device‑tree
> graph.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

