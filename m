Return-Path: <devicetree+bounces-276377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sG7RKM1guGlbdAEAu9opvQ
	(envelope-from <devicetree+bounces-276377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:58:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2085529FF7C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:58:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 10E5A3023D96
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 19:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15403E9F7B;
	Mon, 16 Mar 2026 19:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Osz8bkEc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BIUpMS5P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9068132D45C
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 19:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773691082; cv=none; b=jJgFEAUcoup+M4r3dHl0d7zfOqR/YFEWzk7P3U2QCkFvZRKEhFG5RmnnNVFMLaSdpDgrMYg4aGyONYOldHFOLTxcMDYMbRTytNRHpjZImb5RTVKNm+kqF+kni5FfjYPEigknzHZThvSHbZ7h2XM2y+94t5OR4+NunGlr+bsZUkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773691082; c=relaxed/simple;
	bh=A6js31Z1d6nsCbfs7ycR0dcTVA/JnXJPq1+0VSqpYUo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VmmJEU/FLiD8gCICcTz4neSAsr7L4hgUD8h8yy0Z5KPKb+2qgnwi394mE4KUsKWEo1ftWNQ7NHwlt5iiQovNi3MK8+bq+NeFdzbyFkcE+v62jp1EKUUP7qQv0dPL4kifOk4aMyeE1B3m9AGxhfyq9BPlh8MZdfak23WAovTfeX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Osz8bkEc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BIUpMS5P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GEgGK03295927
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 19:58:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZcF89JA/zHwug4b4HxZGA6W10El1ATEw9RV+7MLjotg=; b=Osz8bkEcXtVFUMzs
	oiXQKBV6vRZ0Ly1HTEMmW5JOI5AXrvnRqlMH3s1yKQD6Sq5QYO5tXfNCvicdjRae
	qImMa+NIhp4msbZ70jUI6yRR9GnIyeAWg0MInQv5VbY4I6Cc8gaPPZTkA2MqHWld
	XE9ae+jicPN7cj49UoO7t58bV2W/Z9uR5hhbMogYDXX6qHDW7msNKsmGFs+bkN1J
	7n2+7O01Iin/L1uB7XetbIhc0Ww2dn6s9b/K1tYjf753jaku9pgconKs5H9BCczg
	xeRA3Zz7oUonpz5lfDt4pu/PCrPjG7PqYPeTAfJ6LoSDmvHqgmYoLyBCPeHd+2IB
	L4DShA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxkuy12aj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 19:58:00 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd849cd562so3245155585a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773691080; x=1774295880; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZcF89JA/zHwug4b4HxZGA6W10El1ATEw9RV+7MLjotg=;
        b=BIUpMS5P8c0VqPazEtLpLut6hV59BbmpyR+ZL8NxqKKF0ITKHpokzrZL3nVG8DXlNH
         3o0FPZHZk62JhN7tbrJBZdzAMavmp+MaPOeK12JMTKYszgpAANgSmRblmrM6+N87e4wO
         xti3vva1Ld06YElvaZe7YpEGNBbr2Q2vWisLYjSRGllIleBKBnmC+UMEk6g8ZKPHgcVm
         y66HZY9+phNaBQOgn69T+s9ZkrlT1+9GE6iNK/F+1x98GU8LYEYjNa5uQV67RaIoHsL3
         NE4/XaZY+LjK5IfOdHp6qPBDDLy6bpjBhuJ2LPFa+ZM+mJpIJT1d0y+dN4sWDtxDTPam
         rY5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773691080; x=1774295880;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZcF89JA/zHwug4b4HxZGA6W10El1ATEw9RV+7MLjotg=;
        b=FmDyxn4aXvQyziQ3f+u5AYqGTR2yLssnl6Irau9r99BUBYPqZLiT91l/KBiP7K3j4c
         o+Zf+4CRvwUknWZFVrCYG3AzSWVUnrCwCzAihdbgSOuCHmnFeWz5cS1/vwX5yw5NhGly
         ckDnv8OdPiZhiUvYLKKnfEq9LsZ/Nl2swrQxDpbLclL3KML1f4pkAYucnoKlpkl2+4qI
         +N4/82o5awR2u6rCnnzAtZMA1QXFbRjjEYYWctoqcUHOHy8mPUBUR4rZJTx0XEz7Oc+C
         31QrFG09GhEJMcfwZkzhYB18br++jLH/ZfUoH7Qi+EMOPdT8d/j2YhWnXcZ5dg/z9M9U
         mqig==
X-Forwarded-Encrypted: i=1; AJvYcCU18J43SS2iLqHGPsUB3n3Qibc0ga0AA+pmq8Q8qoPMH6iYRYhZQ178B7SY0CbEKEWFDaf1aXV3hiNA@vger.kernel.org
X-Gm-Message-State: AOJu0YyY1uWI8NXH77UtZJZ6XKmDKCY0b5n4dsdGke57qvznfp9cp0Xx
	nyhMdiea3q96RRTTdgcGvNd43vF32aZaj0MH97JiIv05YE8pcrrlI2Agn1Cw7MN1GFWaxW80zt/
	Pey0ab1DCQVgpHsDV2c7/UFawRAI2OXj+itaiq+PsOxwj7aGqz9bQjL22MoHa0aw5
X-Gm-Gg: ATEYQzxwTc82JO4sOpsURY8ZNEj2y9vMdOEf9cen8ZFcZOWGZtfg/5Bxoa/SFFYCCXP
	lQLLKkFsxkdx1jDaD9PJTXoGC0sHlI7qqtUaPBi0VhAMJaQl3LyFyZUNm/dx2YmvmCpNIhsfa8K
	uYawZNEe7cumX499cOz5ccNG7UU1Y+YFTtE5nOyMmdSKMCHLrVsZAD3s6A37OR+Zqdh7u9TU9yu
	lASWRQEbrAKn+48dLmpmu/FvMnUxKDlEBvBdRLx6iiPJrHX8XrWi697kKAloqiMweLhMaFtI2YS
	7NJlrTmhl5JlBSCFayZcBBDWGQNPYm8VJ4K+x4wsDernLaeynxlmV3mNNIm4EQUc4DQlLO0XiEy
	+R33d+yt5BFkO6TSLOtfQRlodvVB8vMgXtiLJNYvrvhc=
X-Received: by 2002:a05:620a:414a:b0:8cd:b317:b464 with SMTP id af79cd13be357-8cdb5bafd02mr1865249885a.61.1773691079909;
        Mon, 16 Mar 2026 12:57:59 -0700 (PDT)
X-Received: by 2002:a05:620a:414a:b0:8cd:b317:b464 with SMTP id af79cd13be357-8cdb5bafd02mr1865245785a.61.1773691079423;
        Mon, 16 Mar 2026 12:57:59 -0700 (PDT)
Received: from mai.linaro.org ([2a05:6e02:1041:c10:67fb:53f6:20ba:ff45])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4855725572csm206186085e9.2.2026.03.16.12.57.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 12:57:58 -0700 (PDT)
Date: Mon, 16 Mar 2026 20:57:56 +0100
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        konradybcio@kernel.org, mani@kernel.org, casey.connolly@linaro.org,
        amit.kucheria@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, manaf.pallikunhi@oss.qualcomm.com
Subject: Re: [PATCH v2 2/8] dt-bindings: thermal: Add qcom,qmi-cooling yaml
 bindings
Message-ID: <abhgxF1RcAJD-cK9@mai.linaro.org>
References: <20260127155722.2797783-3-gaurav.kohli@oss.qualcomm.com>
 <20260128-whispering-caracal-of-respect-a26638@quoll>
 <36706481-2549-4716-8e6d-0e4db42591a2@oss.qualcomm.com>
 <546faeda-d896-403c-a449-5c9b0cd7159e@kernel.org>
 <17474333-bb82-49d7-bc04-45ab21095c38@oss.qualcomm.com>
 <ae4c1f7e-8f4c-4ce0-a6b8-bab29984e693@kernel.org>
 <c6136314-5bdf-466b-b19e-43062fb11150@oss.qualcomm.com>
 <e6679f94-2648-4d35-80cf-d3f823f9dad3@kernel.org>
 <4f815a0f-a815-4b77-a4cf-a4b18e776eab@oss.qualcomm.com>
 <95142608-b5b1-43a4-b8b6-38e658275f30@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <95142608-b5b1-43a4-b8b6-38e658275f30@kernel.org>
X-Authority-Analysis: v=2.4 cv=br1BxUai c=1 sm=1 tr=0 ts=69b860c8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=Otm6cmvd0WkZQvGKRdUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDE2MCBTYWx0ZWRfX6WwdTFLKo2uG
 EJM19nJUyysg5suvX5XvK6kwAOH8FPm6c3Koi+xAbOw6AXrwRq9Q3vkfIBNbRJ5+qDiQEkyFxse
 kco2QiJ2dlfTGbyttyfIer4B8mevuYcTrETbJc2Q0bYDkTS9Mim7aJjY3GnDN9VP8ZunA/+Omvs
 I8z52xK5EZPp0S7eCehmqhcAtwrARLnU+Kxqmym6eWFa3K8sZjAszxZcQfs4x6fIyCJId22e53Y
 nDn2MPiNSHQpevPOGp9aSMc9ACQT12+sbVjJZZjrXP/mvNeV8wzIFl0ngT7St/Jwii24NFjfYDK
 Qpdlpii6CBRh86tBoVcZQy5pLFm026KNUggssVG4yCQJkjuWJixvEnvIWTyYMyOUJp4TOdseshN
 JArYt7sax7RM2N555AjtE1KbhMSQu0Ed7FYCFSbI9rtAoRnIJZmT/vUvz3BjtheInRAoUc1Fu1m
 CgS2ytL42EqDTyE/OPQ==
X-Proofpoint-ORIG-GUID: 3dmBnC-OvsEsFR_5Pz3KkpYl2m2hN03Q
X-Proofpoint-GUID: 3dmBnC-OvsEsFR_5Pz3KkpYl2m2hN03Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_05,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 phishscore=0 clxscore=1015 impostorscore=0
 suspectscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160160
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276377-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2085529FF7C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Feb 24, 2026 at 01:17:22PM +0100, Krzysztof Kozlowski wrote:
> On 24/02/2026 13:09, Gaurav Kohli wrote:

[ ... ]

> >>> As a result, each core requires its own cooling device, which must be
> >>> linked to its TSENS thermal zone. Because of this, we introduced
> >>> multiple child nodes—one for each cooling device.
> >>
> >> So you have one device with cooling cells=1+2, no?
> >>
> > 
> > This will be a bigger framework change which is not supported, i can see 
> 
> I don't think that changing open source frameworks is "not supported". I
> am pretty sure that changing is not only supported, but actually desired.

Yes, IMO it could make sense. There are the thermal zones with phandle
to a sensor and a sensor id. We can have the same with a phandle to a
cooling device and a cooling device id.

(... or several ids because the thermal sensor can also have multiple
ids ?)

May be an array of names corresponding to the TMD names at the 'id'
position ?


