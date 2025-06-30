Return-Path: <devicetree+bounces-191049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7800FAED9F7
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 12:37:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31BE91896C21
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 10:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B55624A044;
	Mon, 30 Jun 2025 10:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="myknMIRL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380AB24166F
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 10:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751279835; cv=none; b=Qtcv++aOLlCbmpeMS1I8rlj9WiAIcSyuRZwCcwT5xAkSL4cKMvGOYKvY4bbuVDIMx0MB2PVZkaIZuZMC6iXMpGghupp0Nkac+dyMqaFSIxB6MFxE7CkFh1rebgMF6iSby6t6mOK2/BsSPmDxLghQnvRtnPT7E5sbLZqO5I3bN/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751279835; c=relaxed/simple;
	bh=0f52qohZfhQFKtLyzx2hd9c5RiVAiaxNXfQ12Lv3IAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UYNfAfb5xrYs6KrRjy0ynvbAbO27Osa2R7aYqO9Nhd9gaGPHbR9/5Zu3/MUL4HqebIIEkmuYCSsplpC4mKzxlxA3IfB+DoHQ3HX5LfJ2ymvvEG4MXhGs0jvEyketUhEQ9phGws3WAeYeFjyp0G4hSqwkNsULKX2rL+sSO0m9Nrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=myknMIRL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55U8D5Ka008169
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 10:37:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	chQsJ4qdSF7F+EHHfxbJYAztwZBfL+CDuaIhJc5vZW8=; b=myknMIRLEcQ7/yes
	WtpXZ3URf2iLaegN/xE0HfVhnGxNdbya1BgJlfsCC0go4GO7wst+AbE/XFK0MYvy
	GnujcTKh/iXj/vR2TCQZQDrJSPKpjeMPk0iPBJuy60D+kieAH44yQwMAWyIi4gee
	50BiWHNkNKVHv8FwXPav97Wu7H29YdQb04mA71Gm0DoOEr0rYU5d9uBs7GJjPw7c
	pPji9iyKfv97e/bLNOCeJsyrYdUjX2VL8RAiMeZVPL98Caf8RKL+g+AzFD0tn+ro
	y80qjkwwpv+276VusWCEjEyu6E3V/wgb6+Xe9ihpCw+3A1038A/HoJEdbkaKfQl3
	BTsRXg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kkfms1bc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 10:37:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d3eeb07a05so29679385a.2
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 03:37:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751279831; x=1751884631;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=chQsJ4qdSF7F+EHHfxbJYAztwZBfL+CDuaIhJc5vZW8=;
        b=J7smFxzb3UqUezRF6oXmGILx+VH6B2Hba4U3Bm1wx6sn7o4ef0j/Flfb3dEaf8sDcS
         Wc+/uCPY8cATiWD17R4UezfVFmAfB+7quz4BSluWUfxfvjRcAxxbsjpe2VU7nFsMGkAO
         zPDr3j0zbW2STRyS+NzaPn1BruDgd8IPtI4g75j9iVpgMV0YWLpkRS7+kAWUTS6Xf7n9
         hF2BOBFuHUaxgA4NReFC5aEsdq7WcaOjAVge/IT9s4BJUK06iPVYlezJ27FfuEmY65hA
         5LbOr5KFtX6I7ZrN7dqimx8ipDjzSNvbMG9eez2AJQmbJFhUQ3qnNCQWlv7lSRETgnyK
         GQXA==
X-Gm-Message-State: AOJu0YzAzLRdKz5DrUkNcIdNSJFqDhjm3G4ddwxAFLK8QDqFb8qDlJUS
	RigWFz5rLi/W0ZmVGd5QZqv+naNQvEHBCT4h0i9ySe1QLgLdXxEW1Z0gi9SDZ7oR91am1Q3bViq
	CRWB91Ev4d7v+aPuVRiADQcMNy5w5ibfFmWm4Kw1iyXZRoSfbjIYmmb6WHSD+hlsg
X-Gm-Gg: ASbGncs7ietTYfxM2U+Q2AIeT7flju3zdq4i2akn9K+/LgJHxjS5DEEJRst8maol7If
	b0Kh0tp/INp+BrWKoyW/3vmFErTsJExDI9ZXr42NZRpVVDRWRdn7haBWi7O6Ll2JMT13VgAKTDM
	CMjEfdrYBmvag+EPusH22S0VlYDXxgsjAy+UjCoVrKiB6FMH8oisMw7Pt/8FUg97GmnnHi7qNkR
	3NdaZZSs8yjVcBBJn1lE4Vqc6sX+RprLIginbTeem2r5FeKPnCObKBMb1av5I09mxtWfs5JtFrh
	iQZt1mieVqfTFQxYCWjRm6hi5n0vX1xm8TT9KDTDQE7vx/Yi83Bqz0rwNAFk9T629brivSyeGCl
	veA25zlCP
X-Received: by 2002:a05:622a:8e0c:b0:4a8:83c:3fd0 with SMTP id d75a77b69052e-4a8083c4046mr31804961cf.8.1751279831177;
        Mon, 30 Jun 2025 03:37:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVTE4gfc2xS7ZFMYXNiDjrAAjdrlg3gSjjHLpNFckqEJ2em8WfYVERrLqJ1eKY9ndnkmrDCw==
X-Received: by 2002:a05:622a:8e0c:b0:4a8:83c:3fd0 with SMTP id d75a77b69052e-4a8083c4046mr31804761cf.8.1751279830634;
        Mon, 30 Jun 2025 03:37:10 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c831ccc90sm5470940a12.56.2025.06.30.03.37.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 03:37:10 -0700 (PDT)
Message-ID: <cb863e23-79c9-444d-8511-033dd75c02e6@oss.qualcomm.com>
Date: Mon, 30 Jun 2025 12:37:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/3] Add initial device tree for Billion Capture+
To: cristian_ci@protonmail.com, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org
References: <20250629-rimob-initial-devicetree-v4-0-7cf84fa142af@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250629-rimob-initial-devicetree-v4-0-7cf84fa142af@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: YcmwEAyMhTxu4X6EE2XWuDRmND5UF6wB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjMwMDA4OCBTYWx0ZWRfX4TUs1rBDL1SC
 p/JnNux7kjnu4/D0m64SOiPGe1fxT3eYCFNnl1jvniHtDmPg5WayodwHTeHWp3+yMejp01YjXFy
 h1oj7C6aN4rtyE6hwMNLPr1Rp7gv8lmcjhAihZTheT5uH8VojLSVeQbEtgeNRAixzj79htyRY05
 +fMX6iDt1JW8PKkE6HMrovC3XTlwSFmMbEu8dDlnb7r0edXoH8ACIFgymyUc7ZUi/+oJcjH+xsS
 Cz9eFLVtIuzbuguHDoeKiZKgfkmS63TKhc0imetF6W2Xckaa8nYbm4bEYIZ3J/jkTlXBq9GSRf4
 xoRrcFXbA/YZ/OhAUIflcykH/nDCR/mQjj2Eqp8OOGlgaVg8sE9Hzg0Src0Sk7qxryhsRcv72qM
 ihbsDaSlYyNo4Zv21IB4kW3wEWPkpcPEXVzMuGnvWApL94xSIthXBQm19ufU0KKyt/Gvfn3B
X-Authority-Analysis: v=2.4 cv=L9sdQ/T8 c=1 sm=1 tr=0 ts=686268d8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=sfOm8-O8AAAA:8
 a=ezlFQH_qwS-UVO2EMFMA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-GUID: YcmwEAyMhTxu4X6EE2XWuDRmND5UF6wB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-30_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 malwarescore=0 lowpriorityscore=0 adultscore=0 suspectscore=0 mlxlogscore=739
 bulkscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506300088



On 29-Jun-25 08:44, Cristian Cozzolino via B4 Relay wrote:
> Billion Capture+ is a handset using the MSM8953 SoC released in 2017
> and sold by Flipkart.
> 
> Add a device tree with initial support for:
> 
> - GPIO keys
> - SDHCI (internal and external storage)
> - USB Device Mode
> - Regulators
> - Simple framebuffer
> 
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---
> Changes in v4:
> - pick up tags (Rob);
> - Link to v3: https://lore.kernel.org/r/20250626-rimob-initial-devicetree-v3-0-4017ac9fd93d@protonmail.com
> 
> Changes in v3:
> - (patch 3/3): pick up tag (Konrad);
> - Link to v2: https://lore.kernel.org/r/20250624-rimob-initial-devicetree-v2-0-34f6045ebc30@protonmail.com

Resending just to pick up tags is not necessary, maintainer scripts
take care of grabbing them

Konrad

