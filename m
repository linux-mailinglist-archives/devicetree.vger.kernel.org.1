Return-Path: <devicetree+bounces-269924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8G9PAHtupWlXAgYAu9opvQ
	(envelope-from <devicetree+bounces-269924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:03:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 766671D71FE
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:03:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C7C4D303A3D7
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C7C361665;
	Mon,  2 Mar 2026 11:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RyKMWc+E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="it/CCoPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766963603DD
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772449353; cv=none; b=S6ctdb/MER3CeSHKCgayJgftVhb7RQrmXIEGtpjbomFnl7hYCzZCMDODGC+pKnpGJIapuapuX3A6fZMmJFvfgnEAA+ip1iQMIurKbtDjJdZrtGy7W1bza0BEBMrnjMwYZqvcpeg5sI8YjTRI+SbQWukDhqsA9A8+szVzwmE9HBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772449353; c=relaxed/simple;
	bh=0X3Uk2Mouix3Us94zBjQOFerzLePodn5EI2IRVvCNIE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MM6WFDNwYrqQMgvW9Qq8AlsMo79yPf2yX0/64JHCSwXCXsZf10LVB9wL+3tya9rnXuXdO8+Jf+N+3bDn9Y/a0PiqlYrr1Fk4GeHKTE2GviigC2SXWE3kjkN5rNEgiOTa1pBKSjy4twWqzdFQWlVzpXW+oD9uWA9rg+LY7iWoxTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RyKMWc+E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=it/CCoPF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62285olw1968412
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 11:02:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZrD0+e5gZel+3U94lcHkfGnkgY2W80Bgk3xf+Y1/Kck=; b=RyKMWc+E4j5NIRM4
	HEZwyszG/T+2pgnQ7BFXanDC+bNdvvQrkRFt8v9QgpM6OrjKF5M/TMA6HPlpgPnC
	M+xjRDMGJu4M3m5N3D6/IlUK/TO7ofzg4kiCJi0LlhZtBhvyvOruPaupUYJV50rL
	HjCN1dpkQzrSlKhhsMaD1ddebh1++KnDs12AJ2kMCC2K3dgGZsG0RNTwlZyKC18t
	W+MXm1SyfY3ia5ib8mFKY5T1WKIJSVnvAX+7tO1zqiOhFGw8c8t5ZytXGfdNorHp
	XR6daooBGon0CsAN8EueovnfycIuvIbmqtOi/7RYd95br4wfBewHvt++xBh2b23p
	/bN32A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckshkw9wv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 11:02:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb50dfd542so411641485a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:02:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772449346; x=1773054146; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZrD0+e5gZel+3U94lcHkfGnkgY2W80Bgk3xf+Y1/Kck=;
        b=it/CCoPF4Ox0OWP30V6o9KjKHNZc81gBp9AhUninqXriEnnjXAKARa0ugCgRwpcHI8
         UzJ9uTxOwt9rVRB+UEwRsvJ0dE5X99I8g94TZP1Q67/si4sTgKp735fxYLE/OyE5Ytp5
         MZtrQkEIsdtzVYI1VhdqrkHr2fpu2qHMpMMlrApVxNItIAQWo84YyTpQ1mYi5pgIRe5m
         SDfoBMtVdx5/rvJxzqOJjsnQmB/PnVXotRiDaEC+vM7r2wWqMPEk49KS/ZEKDsCE3llR
         lgFiHdtvyH7VGA7t473GyvCzrLQzkEUug9QlNkcWIxYAweIqRYGKbzCKksz0fOXr+e+W
         Glkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772449346; x=1773054146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZrD0+e5gZel+3U94lcHkfGnkgY2W80Bgk3xf+Y1/Kck=;
        b=flxHYQXHrFU6yQYBo0CCR2dvbJQx0+5QqlWHp+imsXEoR5D5vF63XHTqFVPh3Rx6ef
         IZmIwv0zsBPmnZ15FU+a7fSkXEa2qb/Ws1VvSna1W10Kz7zJmNJ/EiDyIlHNjHW5hRi+
         EkFcLdenyJdlVWiQ/vfow6DKyomCfRf7UxiLkJWWxmb2v9iaebToIb5Lat3No/mSlZme
         5XJTaU2G1FsYpu/gdf87xyV0et7nbtpMab6GGYLRgUh6qrB8ePcrBASF/V6S/50FLsge
         aARJODZUEVTVgNCl0pA0a2aVCTkQhZpUIzBdWwqmSq3g1nnOWH5XB4aePFfGvku2GBoT
         sxjw==
X-Forwarded-Encrypted: i=1; AJvYcCV6y4ub56kqjr5Tuf1qwdC19aoCThHqroN+upWMom7rENb9B6dBFuu+BZPB8mDgxlYwf6uO89X3rYfA@vger.kernel.org
X-Gm-Message-State: AOJu0YzD2azrwWAbVi3OpYnjc7wEoZtA30e0TnN3lUU7AiE0fJtJinKc
	765G7KzmsbICw0XcVEEK3zoVAfumB25cXtYamP46VP2KOfgCV8ulxcLRdBcF4zrCOuNTcpmqaQz
	5p0gStkJVHnHhIcLxUQK2x5rPqe5zNKDAHvZkQwp+hptl/yM4/x8YUeu41XN3iDo0
X-Gm-Gg: ATEYQzy1m0IxqyVya6nUWnvtvQz37PQzAW03Gh8tjC0LkV1NIj01jEys7PBtawptR6Q
	8wwNyfSMRySdk3ZrQMbmLBD7iIbvRT+iSrb6NSyapdGDowvxQjcQPAww8JEiQ1G5daejnNomzj4
	xBx41sFqItZwv5d1c8kzgRbGaToqXeP7zgxzsCZfDXV8eF5X7V+TL3cnGqOgr0BueXByw/ECF9T
	hhy0BxiAkSdUS1tZ2VCc4rX23whtSEG73u3JzjH2YckqjGKRrwt1kX3InF//zI+FAc4XMLSWGvs
	kNTku2Kx1OwhoQJadykZwHA+WTIUV+RBNHdb6WLdGaV30uTqlWbwLEObm3Ra/yU6ZrcFTh13ekF
	P6SPOmnj5dhPv1faMVKmy1X2k5nRZjFHpXgQTaJuC9rgEt2KReebxTDvBsVld5mQXFb3lYHfvQ9
	QIB80=
X-Received: by 2002:a05:620a:4004:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cbc8e79d8bmr1104214785a.9.1772449346387;
        Mon, 02 Mar 2026 03:02:26 -0800 (PST)
X-Received: by 2002:a05:620a:4004:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cbc8e79d8bmr1104210385a.9.1772449345842;
        Mon, 02 Mar 2026 03:02:25 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fac06dc16sm3314925a12.23.2026.03.02.03.02.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 03:02:25 -0800 (PST)
Message-ID: <4489ff9c-a3aa-43e9-92b3-d1a52fdef92d@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 12:02:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: sc8280xp: Add dsi nodes on
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
References: <20260228141715.35307-1-mitltlatltl@gmail.com>
 <20260228141715.35307-5-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260228141715.35307-5-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA5MCBTYWx0ZWRfXyo6NEVZzh0S3
 7ffY1PIhskHSNAmlxN5xtmlzBt8Nzu39YP3nnkqTBlCTNiqy1Y0Ea70650Qk9UaIx4Yp29YpKrY
 mmUB3N7byX9hsy2lKasJ1jf+Iiio9kGWRQqLYxOp2+t5Cz2yAYD0Hw+cDIswL/zOG/IgB6PC/Ch
 lM1i1aAA3MM7f/BgIoYnN888bwy5cAFtUIh3r15XBNhy14UIbft/jil07OBbQpW21rQAV0WRk1N
 Z8hHncg+fyZ2I/+fC+BDyq1c1F6FULf8OZfj5Vsm8TrodYZhR5ytj9bY5GubjkG3hZl+B7b++le
 XjQghkKG7sEFjmNdxfyF0Se6px7G0CoYLZ0aMCNnCS//OwwxvvRBY/yZH/unxCtnplobi4hOyql
 s7mnQuO0y4vv98k3M3/O8XJKeHrS2GVylRaDCkK2oQxPDVNC3ffc8U4cYTRyNc1KeLfNvDANBs3
 MDTY2gzDrNQq6t5x8zQ==
X-Proofpoint-ORIG-GUID: pYqF3E_y7WG8rcY7o3dBlVnoc_EQ_GHg
X-Authority-Analysis: v=2.4 cv=EvbfbCcA c=1 sm=1 tr=0 ts=69a56e43 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=-LkXMzDxGcKDj-WG6ZYA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: pYqF3E_y7WG8rcY7o3dBlVnoc_EQ_GHg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020090
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
	TAGGED_FROM(0.00)[bounces-269924-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,oss.qualcomm.com,kernel.org,linux.dev,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 766671D71FE
X-Rspamd-Action: no action

On 2/28/26 3:17 PM, Pengyu Luo wrote:
> The DT configuration follows other Samsung 5nm-based Qualcomm SOCs,
> utilizing the same register layouts and clock structures.
> 
> However, DSI won't work properly for now until we submit dispcc fixes.
> And some DSC enabled panels require DPU timing calculation fixes too.
> (hdisplay / width timing round errors cause the fifo error)
> 
> Co-developed-by: Tianyu Gao <gty0622@gmail.com>
> Signed-off-by: Tianyu Gao <gty0622@gmail.com>
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> Tested-by: White Lewis <liu224806@gmail.com> # HUAWEI Gaokun3
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

