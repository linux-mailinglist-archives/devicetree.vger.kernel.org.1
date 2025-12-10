Return-Path: <devicetree+bounces-245524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 37446CB1CE4
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 04:39:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8F69C3022582
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 03:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20DAC302156;
	Wed, 10 Dec 2025 03:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n8FDRPqO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KuzXsAru"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB6730DD3A
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 03:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765337981; cv=none; b=h99RcPKVv76djy6GKbsKBLkLUaQUiPlLZt5pwDRLzvwQ+wxGb2kC7lSU4UlzA4dTHhfrX9x+Pv2CVWl6oEO1ncV6GGy5oYqJK+B5ig83mCpUWomnknXEzg1phRsRfwYKaMqXuCplq7lt6SU2pcOrW6bFvskuYNU2MGaWkJDyzoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765337981; c=relaxed/simple;
	bh=V+MNJ8JdvjpJpkxPopIbEPtHuBfcQJX3/DF6jcefC4g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L1+q3MMTVBHEdRHUoeTNOQFeKGxjiYMm1VtTCmCz+X06YHo7/4u0RtfI9ZqnRm57vecd4/DUlg3I7lhF371a6tpk6KoI21wJpC+nhn3T7qi3eD5PNq5u9p7hllyeCqGnoOZqlryljqj9Bt9EtS6Sjxrs4mFXBAoqQxE9BkoW8Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n8FDRPqO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KuzXsAru; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA3LXWJ683700
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 03:39:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JB2PlP5Aqs+wZaYQ8JcK0iiK
	DmXwgjam4xkJkbIky34=; b=n8FDRPqO7cDKRI6CEP4yam5nrsIfxU85j+PB+TIJ
	VkoIUODtsZGkulfv6TJTh9/xahP9ahHwFHQxP7tMkOCLYrLXLvLgSkHWCJyaytcP
	WRVitslYSAz1sd7aJ6Vq6uUpgVxcXpc2/L5MZGK4qnKZxGwUvNfLT/IxpWFyr65c
	2V0OHVd/Hvhr7pUj7kd1xQ+HlIzES9CXQYMu1Divz2zNUOEK1yUYl0yWb21r4pu3
	xVt0S9gdPx33SEMpaMBGea1N9UZ3BMbTZKNYo4ZWw/F5cPRjiG3QjMnTrTFtX7N8
	WS4kNcyfbdbg7PMeuOx3vsKCy/U8L7Yy6lURYWCEa63htw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axwbf0tyd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 03:39:38 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-559836d04dfso575147e0c.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 19:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765337978; x=1765942778; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JB2PlP5Aqs+wZaYQ8JcK0iiKDmXwgjam4xkJkbIky34=;
        b=KuzXsArus3zaKXZ4fBtsEWZaia5KYXic1sFmZUZ1ydyE3JwgwzTQM9gotiYKVyi97P
         RwW+R9Q6vp8kmSaj1COtlSOqBNMoJmfSEoVI1IYSaQ8+Otodq11RBY+7Z5Oj1V/QVekY
         g32bkDLCLd9zCGWGRIKFMRWAodkmwLf0PLHJqf96PnqxrBUJjNUbOuZaJSRlKDIS7RSx
         ccNFof1bhRjteRnADKboIzRoV66v/fw87e4Z99PNxk3VWUDIIj2rA4aecn3/1mTBb+KX
         kMf+vneXgSo+vfjEgHJImqaR1hoCm3oqzMhAm7qH9vqyJ/72tpJ4BlkfF3P+AylOQ2IK
         yjBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765337978; x=1765942778;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JB2PlP5Aqs+wZaYQ8JcK0iiKDmXwgjam4xkJkbIky34=;
        b=ZyxppWsGmmz/9OlkRDGUDn4Q/4Dbqa8FX9KKqFlhmipjj6J3GxpQUTENqQrr2COX8J
         UIAH8fJW7/iwj/rQ9gf1ZWLXRERsv80rNXzjcxwYMjzFKgQhk9E4QSEjcb7K9h4sC7rL
         0om+XbEZSARM/LSrmr2fEU5vy0lI3yN1whGZwmpyGh3TYmeT9YxrgyrS1rx1rYsQO5Kr
         R4qWLtDgnQ7JTnaFvT9DGoL7twKStmnKftOmusmERC99BkIKc9uvFTba0oaT3ktScWTZ
         5UGM+md3gQ6eFovMKOp2GCXHeJw7FXyPpPh041aL3QnHFj+K3QJAZgT0EeGZIk3SOk+g
         TkUg==
X-Forwarded-Encrypted: i=1; AJvYcCVe5Pr+XWACaL/yaIHxMD6T6ZHubOCRwP85f4+WT+oa1EzZbJJk3ccFu3dKyWMeQIm0UXcLsmOvjqfg@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2UY14hS4GZbzz6rY+i6P05KCy/4a0OCrGr2H5UOMXsWeABkel
	NgahSyMcIlJ7hUcwu3mbI22ODJRBFFGuNNr1AyOPz3gzCdJeRxXbk2L7PiyRR5ZNpjq9bHABg+E
	69gMKCRfX+Vvqqk/3jYH/zVtp3xPhC5+ym6dCUr6aDnZ2KLQ/fN5KVxKXvV9j+v3w
X-Gm-Gg: AY/fxX4OGFUzyKrm8m1ISNGZg5IekcdSsRkQ6CHrQiouGpV7JsIhdiRQEK4jGjkYCq/
	rIUL9HdxJ2UJQlEBQlTQUO0KToB8Ls91ABqsf26hTiI9++XulK2iOcT8nOQ4R+IdVPinUbKI/O1
	MCpFYcBiuj30lQufvfNtLC+7KnJcTwiWMN1ZMLHmR5E9wvbYaulMitsfVWVro4FXVnYe5VPRVm+
	hYchzvPgSh4SIDnzCQjLnQ2t7y00Xd6N658NyB5cv/AknMFgciandbp6/nazGigwMwOkwUjz1NC
	bJKsWW4/b9M7KPLuJaeGMRZBfCZG5HuQIR0f2WxFZHcaVa9k20Nb0+pjq7F70yXoZD1hXjOkP38
	8J8TJr5Cc5/3HBQ7ezVUQGanZWntJACyq26RYR6Phte7AL05ygyZEi8vRD+shveYlWKwsuV66kL
	2QSwAf+YIohVhcM/7FTCZi1+Q=
X-Received: by 2002:a05:6122:182a:b0:54b:bea5:87ee with SMTP id 71dfb90a1353d-55fcfb42d77mr377997e0c.7.1765337977687;
        Tue, 09 Dec 2025 19:39:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEWZD/79Nyc86hHBYRke306DSmwPKbdCS7KJXfExru+QCuL6W3GRx8RN0t24JcWq9J9N6zVCg==
X-Received: by 2002:a05:6122:182a:b0:54b:bea5:87ee with SMTP id 71dfb90a1353d-55fcfb42d77mr377988e0c.7.1765337977294;
        Tue, 09 Dec 2025 19:39:37 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e70621ec7sm55347691fa.41.2025.12.09.19.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 19:39:35 -0800 (PST)
Date: Wed, 10 Dec 2025 05:39:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yingying Tang <yingying.tang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingweiz@qti.qualcomm.com,
        yijiyang@qti.qualcomm.com, yintang@qti.qualcomm.com
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa-iot-evk: Add WLAN node for
 Hamoa IoT EVK board
Message-ID: <tzaugy6vzlh7qv7zo3zhbjkyvodno436wkrwpm7gkmo2dmxu5v@2evb2qevndne>
References: <20251210032817.1264850-1-yingying.tang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251210032817.1264850-1-yingying.tang@oss.qualcomm.com>
X-Proofpoint-GUID: SLK6LADyQz4-tMKz7qsuPY2pi1pY98gU
X-Proofpoint-ORIG-GUID: SLK6LADyQz4-tMKz7qsuPY2pi1pY98gU
X-Authority-Analysis: v=2.4 cv=f/dFxeyM c=1 sm=1 tr=0 ts=6938eb7a cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=IOcu9D5yMRbS1NPKWcMA:9 a=CjuIK1q_8ugA:10
 a=zgiPjhLxNE0A:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDAzMCBTYWx0ZWRfX1uxJ62xtztOn
 sU3eyxun9IdupwKKO9iOzCPcXfSNnMz/m/P2/OzWh16Y0n7R8IREZ6wKrTQWfFaMP8p4e7g5Qx/
 SjHFH6Ce811zaKMhJ837wypwk/5wBlwHVA9MNwoQPpghoJ1eMIOs8EdNzj3b1At6eEj+G7iVpaS
 +to1PfoQGpaH/50GQ6rAh9Ku3UzsOdRTxzwripPtsGG7SzKoRZMHl7JAHkcMtfoh9Pvk05UQSGW
 rkhF2cnLp8E09tMIjprCrSnpuXqJvS6VVywOVDoLek8oKjjdpZy0j9wwxGlruZR2dsoF3yYTekg
 QdSpMHv2+wY682F0DiyZhsnc6EvyR9tVEYlcd2FDj4tdCzvKo3QqBzGGBEkQ5o55L2WZTDNt4nh
 ij1gxIiPt19F+Wul9VpnXJ27qSUESA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100030

On Wed, Dec 10, 2025 at 11:28:17AM +0800, Yingying Tang wrote:
> WLAN card is connected to PCIe4 on Hamoa IoT EVK board. Add WLAN node
> to support power sequence for this WLAN card.
> 
> Signed-off-by: Yingying Tang <yingying.tang@oss.qualcomm.com>
> ---
> Changes in v2:
> - Updated commit message
> - Link to v1: https://lore.kernel.org/all/20251209115924.848165-1-yingying.tang@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 26 +++++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

