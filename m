Return-Path: <devicetree+bounces-268281-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YC9WJBLSnmkJXgQAu9opvQ
	(envelope-from <devicetree+bounces-268281-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:42:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AD3195EB2
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:42:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EAA953023DB0
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E866C392C5F;
	Wed, 25 Feb 2026 10:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nn/rFSM5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gH3Bw+Sb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928532DAFCA
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772016139; cv=none; b=pxaPG1UQpD0xsQY9I22jrNEPtG1ky5a3Q00aii0aGZA7hv5/iBe46q+jpMxNOgmdizWJL4NXOkBdPFmIPqR4hmrqlhvy12n0TvqLRaGH6PyPk//n/PtTwhmRxK/5BwKS3V15l3Yoi00dZDLz9PLf0T3PX2iRBLjtshMncs5wxg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772016139; c=relaxed/simple;
	bh=0s9g4/i0x/T/4PRoIv/GL2S5/ZBeCW8BEvbWYUcbLL8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PxtnsVj/THuIcPdxqbKVR+CzAJoK2GXoeIP9TDmvTJJI+tORscipoPyLV50RoQWhxubTN5FfdtAUgIUhproENw7d+MkY+m8XwuEsImw0zwxBvmdW9SD3wXorB0JsDNFQKI6mmcLffGPyfnbtGzUKRTklOx//gP+jRTJ0fwp499w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nn/rFSM5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gH3Bw+Sb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9Ss9H2127738
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:42:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ebtEBQ44KO8bA5BW97WiwZ537ZmKUUoxBiJEqqTAc80=; b=Nn/rFSM58InaKPnI
	rlYTjp15i2PmF54B8MGxq8Dmzjss1I3DwOdPOTiAGnSoFtwvDQwRvn+QTWXHkSJk
	eVLnS0SUdkQLyTzyi3/zPJcEF/mKmtIXrWseI97SUmHyogXZGwBfMagDhM5VFUZS
	lhaGndAqpGfmt+DmgrFaPOKFY9JWIoBgdk2kwtywxYAOHqCY5bLsYatP9RmBTOmT
	IlT2a6W3E4AIkRmruWwP0pqVkrOqWTJu+bIbF648odeT+dVvKGDZelUD1Vv/z55Y
	FEM7nrEf24frulb61Sna5L/eJ9q2W57bAllQLVr3caK54E3Cr5o6Zg1CgAb8toRt
	DcOMEA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chexek6px-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 10:42:17 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb38346fdbso603551885a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 02:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772016137; x=1772620937; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ebtEBQ44KO8bA5BW97WiwZ537ZmKUUoxBiJEqqTAc80=;
        b=gH3Bw+Sb4mQDHBXH37HSSCOplwyaa9EYSbbmaqrLBe/C/ioQN6D3FBFnYgM5NjqD9o
         Q0+XuKooRzx7EXsjkjsLV+XrWXaX9y2InU1xyZpqbjldIQndZKHnAFfOU121IGucDASn
         M4kLGt6Sw52HM3SotA/q4Pv1qPfgZ6CplC0LHBScLmTY/otGIQvszvAtc/K2gROPAupC
         Q53ddeaZJMrJddE/Dn3MbTikNzDTYuXn+Sr2OG8LtzNduhwiCMDCihAmfb595VKf50aG
         XEQ4iQUu1T6PUosqsQ05oHLZ4dzcRFPGfubn9L571UYBaSDpdlJgvGaAvtA5PF+vBY8d
         VdOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772016137; x=1772620937;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ebtEBQ44KO8bA5BW97WiwZ537ZmKUUoxBiJEqqTAc80=;
        b=jafd0YHkvKRzPnkd6Xa8WODwM76Pfko3e+fUT0bV/RCPtkl2KA7RRySm2c7ZB9sDUC
         FnW+yPgh3OzLJSn/W1lcAisgPABcQXnroiXkwBsCh+zbMUOWYVJTM+7C5YrSculLN4Li
         KjeffoKADx+OIki1GsG5iyYfY8KJz7d1AQC2yFVVx9r1QL/c8ih495+WgUO3lWcjOB+A
         IK/HRSYeOK+HjAn/H3/Y3HCLfFlec7C1mDXxwIUInq78VAn4L1FMhHC60+pQuQ+9var/
         OXQ12jrv/aDvNazv/hZNGz6mlM3n80tsEx6YQrzsQc0eu+u/XZaZFbFyNqrdUbnY6JwY
         yTSg==
X-Forwarded-Encrypted: i=1; AJvYcCXAwW5OaflPW3Mt929Fw+jvM+F55JiVgGzeVvRzdoKvws8+wW09P2E8Mkk4GDZgiqrM9j6DmOry2Dbv@vger.kernel.org
X-Gm-Message-State: AOJu0YwuIGv1DnVCe0yK0WkIsfcwvVv5osFXiqo+nXmV5VyZmnQ4AMmP
	8LVIMdIV7sBNhWRpHPcokyncbrUGKZ4tAspfd/aVCb6TGWmpPLCYnEjRcWyfhSfuAGKKwZmxKKS
	faHjDLlg8bAIU/r3NWlKC3vzOgxIHTBfwWYeMoOxGgb9Fz/dJo/+lVw1BbGXzJpwp
X-Gm-Gg: ATEYQzwQlArap/0OSeWMM/iajJEHOEYjstfKBTHqFcAqWntCgdFHMM0LwhfmoFTXJI+
	CQzB2XCe5Ym8WiCzyzfPXLopLwThgb4KgCJuEW4hLvv8pTuyk95032z9X6SJpQeYKQ0JWSSgNfH
	+A06RUXSog5369OM9hJRCjkupNxwRR32xIjyEIlteGkpFCRccLHhc8MJS2XP2LA8Geo9ht+zH1h
	r3uP3PIyYZUvtmVaKtYpZybTn2Kkj6bWvPZA0n7hGordvBB/sG9WXxNoOm7XuWkjs+TNvYLIe0C
	oppn2WD0yAASlRJFnwnOiKEZTS2onYzMiUoDJe6L+ipfReO96EIoxofPiKPHOY4zMAaKXZONrx+
	ZqYFt7xIwV68v8NX+NwBJ5w/dKXKijKZsVYH+5RnZruIoVcMrJncgq4+lx5VpaFznAKU/1+TPjw
	dKxVY=
X-Received: by 2002:a05:620a:6910:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cb8cabef31mr1473553785a.7.1772016136930;
        Wed, 25 Feb 2026 02:42:16 -0800 (PST)
X-Received: by 2002:a05:620a:6910:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cb8cabef31mr1473551085a.7.1772016136481;
        Wed, 25 Feb 2026 02:42:16 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65eab9a08edsm4160589a12.5.2026.02.25.02.42.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 02:42:15 -0800 (PST)
Message-ID: <6d9bb537-a7be-48aa-9097-0192392d32a3@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 11:42:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: display/msm: dsi-controller-main: Add
 SC8280XP
To: Pengyu Luo <mitltlatltl@gmail.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Tianyu Gao <gty0622@gmail.com>,
        White Lewis <liu224806@gmail.com>
References: <20260225054525.6803-1-mitltlatltl@gmail.com>
 <20260225054525.6803-3-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225054525.6803-3-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEwMyBTYWx0ZWRfX4+R9E7Tb9HkB
 p6oDr5YDwiLf75vQr0ZGlGt5PWs6U3bmtVnOxl4vE91dBughvxEMk/2+WoP/dmMpNBWOH3Dj6Xg
 lbHvjnjjTNfLlK3zhmvDn6xmVsugAd29wTn9gl4Ouqc+HV3BV4eqbEpr+cpZUTUE2ck8WftpyGj
 e4EDEN8pOzwFwrlUXOd8dlVIOfUOk7JJVquncxsazjQ5ZSMBSf1y3oCimTPXwf/u+DYO+HAo4e2
 BUAjkf6yrqaKA9cmtNWP6pmQiO8civmnp+6nYj6niXOsgj/gjrMFI4mF6cOebEN6Afdw+m76f+h
 fntEsplYy0bp+PIGL/W89TiarsmaNQDm8nBgDKfJiCD7L4CHx7ccISmhRfvHm4+JkiqMOVgBFB7
 MvUQfDSwQ0Xf9G0nyeKyFuWo1jJO5HTVrTX3kDshADga6iGLhNFYqyJpa96l5hO2+7Xr/pFIJZ8
 z8jWkh1Prg5nw33odVQ==
X-Authority-Analysis: v=2.4 cv=V85wEOni c=1 sm=1 tr=0 ts=699ed209 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=pGLkceISAAAA:8 a=XmQorHVxhl2AQNUWPSAA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: nljDcQhGAHnL0GjtfRpG178TPhYrhaWS
X-Proofpoint-ORIG-GUID: nljDcQhGAHnL0GjtfRpG178TPhYrhaWS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250103
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268281-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,oss.qualcomm.com,kernel.org,linux.dev,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 23AD3195EB2
X-Rspamd-Action: no action

On 2/25/26 6:45 AM, Pengyu Luo wrote:
> Document DSI controller on SC8280XP Platform.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> index eb6d38dab..e6aab0e6f 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> @@ -29,6 +29,7 @@ properties:
>                - qcom,sc7180-dsi-ctrl
>                - qcom,sc7280-dsi-ctrl
>                - qcom,sc8180x-dsi-ctrl
> +              - qcom,sc8280xp-dsi-ctrl

The revision registers match for this and 8775 too

The latter seems to have a very slight difference in a single
register though.

Konrad

