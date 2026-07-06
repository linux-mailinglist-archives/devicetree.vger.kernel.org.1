Return-Path: <devicetree+bounces-321274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2lCtFRzcS2pKbgEAu9opvQ
	(envelope-from <devicetree+bounces-321274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 18:47:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A41377137B4
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 18:47:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=WSVsYW8t;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=cIpQlrjI;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321274-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321274-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E53935D992E
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 14:31:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F26B41A79D;
	Mon,  6 Jul 2026 14:30:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99B4341A76B
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 14:30:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783348202; cv=none; b=HOHUhdBA25rGpSJ6dxsKvKdkFPuMkDIDjanbgBFkYyenaUn9PiiglgUJ4RMLWSIABWLfbBfsoHsApTKgHnPC6k2E1Sd5a0qEsonIYSIIfhV2jpdEkNomB7cHWcjWcz+ZxDq/AlzDVfYBq5ocMlC1oDsqE+ad7cw1PJeTMb5ObR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783348202; c=relaxed/simple;
	bh=enUDLqyCCOk7xRn9AsA76+zJeWqf+KEM2d72NcgrCCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KTfi4aJ0dtjSm50lvoAs4/kE9oHcfY9eYBiBJb2qiXTXGPpcczScDrWGMQsVcUV5mrLB6SrPovns60yNzDP1yemwieLpgFkb723zuZU8tUeiqQ0waXup2Tbyt88Ge08cyZkvH5b94PyHB1ObMuUUMivZ2k17QNbcCsGEbDSRYos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WSVsYW8t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cIpQlrjI; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666EE88h757462
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 14:29:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Xat9AHdfa9iwq7frDekPYVbN
	vuDCv01nEgSbUXVqbpk=; b=WSVsYW8t03yHr87bYqyeSbY+5W5R7kK7sWvOSW1N
	Gbbw1YIbomEecJp79Tv5Tqu26xbwlXwJhRe9dlaf8tvunByf6krmQFIHhKWC1wDY
	55jsYmEdIYi71vmiok8a88NxUEKp6TCB7HV24MiQ2gADMZ1bipM8mRDVXP4ofvp0
	0o2eG4INM5vS+OxrLnEzYO+OAsZHAKaRWQFzjulTvNk9rNz49Ru6LgFu5TPAdWGG
	Hj/d0ksA9YL7NL95LBhZ5aVvWvaElKD6BCVxyHqH67vMQH1lhxUwUAek4kVwFr4q
	MzzyoW0kn9/6DvssXoKxx8nwUTdAewgngc/XwHvQeNgSEQ==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f87q7hta4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 14:29:59 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5ab02fb3054so1492475e0c.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 07:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783348199; x=1783952999; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Xat9AHdfa9iwq7frDekPYVbNvuDCv01nEgSbUXVqbpk=;
        b=cIpQlrjIVcUsJ7m03ZmB3/eqEaU9P93iBbcpckeMbnBNn9jXqYK8pR41UO9Nf6xo6H
         wgHNlUoE5WgbLDjBIBzQMLcxaW8/d2xzoMr1qiSHBTolbJOWxfrSSqRSUIssr5xIXos0
         jtt7qaPW9WjNEIsadNYVBXYGHmDGTa/PS1noo8MySyOi709ePn/xbS48zV38TkcJKRJO
         ACwinCU50FkEyn3DAf3kBXveqU+nmGiyx1tMcnB9n4feUXOj26eODJnmULmA+EuN3rb3
         cAnob0LNIX+O27QwZDsvFYg6UpTV3dxwQ/nec3+o4oqg0MzrNyT4AU7JlxzP7K5bQLYf
         SoNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783348199; x=1783952999;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Xat9AHdfa9iwq7frDekPYVbNvuDCv01nEgSbUXVqbpk=;
        b=mz0FqdiIRropQAKC0uM6ChQjncVOhS0oDIAZnF9VRP0trNVYq9RqsOB+PoZ6Er49S6
         yfBiOUMO/cMT/yheqz4OAFaAjvUYWpqj4EdZuxWE84NIiai9rnetp7KW52XAyM0GOVkI
         o2ZcMhB9hNAwPYEHoWwc/KYFmh+pzzcDbHY2dmDFT2YbsZABjBrGcDt3nWWuV2LCiKUn
         iBs8MHiFXEHD3grZHANBk2hiFnSrWFHCc5QQMb/QVUyJn39MYO72jCjqfBHfX6fQA/a/
         swt8T111FNOPnSDmYEIxl5bvtkfOO8+d6XSxGnQhkq1RFAqnQ69OyiAo0SJUhl10caLr
         +4IA==
X-Forwarded-Encrypted: i=1; AHgh+Rq/Uz7j9Bk4/oJ/yahXNMPadBDnfgFUdkZSB1tyeDH6116gDs7afAIC//h3NEfGfAUvzI/be1T70i1z@vger.kernel.org
X-Gm-Message-State: AOJu0Ywju2U9ue08qurDjSMzSAf+sDuNS7jHCajiNFT0Fa2JcL6L41r2
	8v9sPbRoonYc5wmZwKJakCJgHqxYlAJvPX9Biizi67SRP/bpFEpdU0y77qvz4M1kR0riVxDho6g
	DnQOzgQ5EFI7TScI39pyFEkquxFlK/3x09mJR4fB0ovDKD0qj2ny9z37AC9usjVuY
X-Gm-Gg: AfdE7cl3vi8VlKryEmf0OqRIePUmjBL6y9jNZKyB4eJ1rNhyQ30i/mUwsjQh0si9/Dq
	vaROktHjzX7Jok50/UhnJdZ2d3AFqJwOvrbBUMaFBPRxN9D/woibAaGcfa9ew2KTsNfkNE5O5F2
	YDuNAOsOVt80Kch0b9vK5bo+ZXtQX1qpZcOCIAYR4fH3dEWRWUB8FJRmv92lTiJZjHz7sPsrJcE
	FlDEZgAP3DAks/JXCwLmChQ/sL97+zflr7j0QA0Drc/l6HWTLdlNh51z6T7a1o/WYn28z1Jo+yg
	U8Bfw8NOVPx4wyTVwayw1s70vTaBn4vBnvw1mxir95cZYxDqFHJwdVcKnrBrtVP8jPI4msmNfmi
	kWvmgMqmr/PQAWPqfD0B/qBLZHo0W6JCJoWG3fjfA5OLntOp7McHO4AvSK7KgrnRkI9z2XzLYQN
	eOaIhIUQn2Mpq2F0ByrhJ1cFjK
X-Received: by 2002:a05:6122:6609:b0:5a0:370:f12c with SMTP id 71dfb90a1353d-5be9085dc3amr472081e0c.11.1783348198873;
        Mon, 06 Jul 2026 07:29:58 -0700 (PDT)
X-Received: by 2002:a05:6122:6609:b0:5a0:370:f12c with SMTP id 71dfb90a1353d-5be9085dc3amr472059e0c.11.1783348198306;
        Mon, 06 Jul 2026 07:29:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed1377024sm2923549e87.26.2026.07.06.07.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 07:29:57 -0700 (PDT)
Date: Mon, 6 Jul 2026 17:29:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        jishnu.prakash@oss.qualcomm.com, kamal.wadhwa@oss.qualcomm.com,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 2/4] regulator: qcom_usb_vbus: add register
 abstraction and PM8150B support
Message-ID: <tejtshxer6zb7vmtuuucpizbuxwomx377f2e2zfhsxgm73qpug@vzp2v67ifsi7>
References: <20260706-add_pm4125-vbus-reg-v3-0-999d78a87b81@oss.qualcomm.com>
 <20260706-add_pm4125-vbus-reg-v3-2-999d78a87b81@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260706-add_pm4125-vbus-reg-v3-2-999d78a87b81@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE0NyBTYWx0ZWRfXxwviFbI41RD3
 aPr/7FFk9lIExk5b4qio1j4YLTp+e7W3yg05gEcSUGefHbBmmbpZvIOvlT9JT+69KMxR/qnx1nR
 4HQfTwlgVlMfP/8G+L6gYvZqAR1KXxFZOBeFvzlyu3n/yuyr+xcIvowHkASZlE1LIgLBx1Q1HAK
 fxIqBZSzhj3CRfuFLgemPvWb0MWy+ACKqj64qJxGbaBZVsgvWr1EoPpHhPXSKO3dJU+PK4fr3Jx
 /eHfk8PTLMa7gPbJQg6+3Nfw6FakHNT97xQpSiJqELCGu6IWuv/3vVzR4DTHyrOJT7ipqIrLzFM
 FOFLGmkmI3/V5RySsHf8fylWDrLqS3gMOKPeH3SbgNJEBONerzPNu8nZ+yn7oALv46wJuuKKa3p
 G9LlHUx9VWXPz4FRaA6U6u8CRyQZK0mcRLzbOe95XL1DCd8ONv6GEfxt6jPjzF7dBMDe4qVJizS
 XpDEQIKJBWJ0AQvaCbA==
X-Proofpoint-ORIG-GUID: hNBJ9x_L1CtCKvdWvlc0Mum9cH0e-odz
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE0NyBTYWx0ZWRfXwGJchub30icl
 7sNYSAMGdXyYWPPZUxamCNNASR503mkOLVhDe6T8leQvgXjA4FZnU1/+DDsY2w549C8Ab0ujRKg
 4r4U7ufYix8iJJmp2ODIEwYgJ3F6qLU=
X-Proofpoint-GUID: hNBJ9x_L1CtCKvdWvlc0Mum9cH0e-odz
X-Authority-Analysis: v=2.4 cv=f9N4wuyM c=1 sm=1 tr=0 ts=6a4bbbe7 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=mSBXN4lFcZzbJCLm208A:9 a=CjuIK1q_8ugA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060147
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321274-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rakesh.kota@oss.qualcomm.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:quic_wcheng@quicinc.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:bod@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:jishnu.prakash@oss.qualcomm.com,m:kamal.wadhwa@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,quicinc.com,vger.kernel.org,oss.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,vzp2v67ifsi7:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A41377137B4

On Mon, Jul 06, 2026 at 06:01:06PM +0530, Rakesh Kota wrote:
> Introduce per-compatible regulator descriptor data via struct
> qcom_usb_vbus_reg_data to abstract register layout differences between
> PMICs. This allows the probe function to dynamically populate the
> regulator_desc fields rather than relying on compile-time constants.
> 
> Refactor the existing PM8150B support to use this abstraction, wiring in
> its CMD_OTG, OTG_CFG, and current-limit registers through pm8150b_data.
> No functional change is intended for PM8150B.
> 
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> ---
>  drivers/regulator/qcom_usb_vbus-regulator.c | 71 +++++++++++++++++++++++------
>  1 file changed, 57 insertions(+), 14 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

