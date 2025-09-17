Return-Path: <devicetree+bounces-218396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D42B7F718
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:41:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8F041891636
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFF0323507E;
	Wed, 17 Sep 2025 13:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZAuYzaPm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D675224AFB
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758115907; cv=none; b=jGaXsihsFAf4LlsYUygLM0qAjWBcxkZAVRvMRlxXpDJ+LsUBkv74Ss+GwpAlooE9wp72QP6ryd9qMhSia74BXqRyrzhxe6p9HwfzlMdVOcvY4Aw0/iuOhjxpbJq1KTQoaPAa8IjVSov4s78Un+peo70F+Kp1V2LFbCdcRnWKfuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758115907; c=relaxed/simple;
	bh=sSu/tvhqvGYLoATR4KdHdgOpDxsSaCXZAjYdozBlY0U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pQOt+2a5FdLum1XvvydSNp5P7BtkCgoUcdbFfcKyGhCZgzcy1w2v5zQWtjcX6p0wwwsUQzKhhNfbx/hE8xeO71pn4Zk3KIARe5RwaUGmaoAQfxrNS+w0rrPfsrm/2UmfhjyButOlYY77NYzlINZYkvKXgYvPn4X4/mq5UKDRLbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZAuYzaPm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XXlL027143
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:31:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5i5EojwIc6UENkuaiTfVkmrr
	3rtqFyYb9QKR6qLAEmY=; b=ZAuYzaPmgQTm3NKy0jOaa/j/83FSQcTPNMOoC7o/
	G3pYVlkcAC7ke1zx+ByEiFljza24bkUZ/WZ+gZRNDfh9x/h0N7PkGYRfq2tuJbbK
	24y+oKCMX/0ce2j7ljlaW+lTzkRCJkBYRk4BBjIppWerbCkRziGmhX1unAk8mzJl
	qZTlIRaXKWU64ayFRaoKb38ahaN8izH2jYOiPiR9+PQJNnRyvyGciGmNi9D4phK2
	QyMitmiM6KoOy9jlbXrHUnQTv5IhhwTIi2X2af6U2e80/KEStcJF+SwxYxnFXLrb
	wc5JRuWWq/+KUoEILKGeACQ4ojesmUdc02il4mY75EPLBA==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwjha1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:31:44 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-54a636b786dso162770e0c.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:31:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758115904; x=1758720704;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5i5EojwIc6UENkuaiTfVkmrr3rtqFyYb9QKR6qLAEmY=;
        b=HtZLJ6gD9YE2bp0wd1zR+WPW+JzBuqEhG/nQjA+Zxa8Oju4sgJUEwtW1IRSDsUx6zR
         QiCQ83pAmHmqH9CZY9Au2a4Ji9PJgpRLBqtedq2GTQADXzp8DGCtHBmmlPqblH6bBTTo
         SXzQoktaKnh2d6eSyOl1BD+yN90vtF94mdwBmb+g+yOQ0iV9Exs7Ic+3rLEKh5MhQRzg
         D/04A8K11dRATitm529Z+iKUCVQYAJyjqxSgzVIesimNvsRiByOMeEt0LqRcqWofcNZZ
         pPLyQkMmrI9eI8fdPkWEhReBVxn14PpGqBF5ACDarc202cc3mdwa3b7Sda3scNE9FCxF
         hQRQ==
X-Forwarded-Encrypted: i=1; AJvYcCW85ugegTAzJb0gjhFWmVz8+l66PCZoLLu2dpj/igjsMgvrM66aMDs11fiDwU6IUIBhxT27Bydsp6i7@vger.kernel.org
X-Gm-Message-State: AOJu0YwF3P84/jwcm29pfB2o1GlWEH86YU8c9Ir6YXXGojq++fGjRach
	zMHXXECwIIdfn4AJllQ+eq3SYQr8uY2B9+IGVj0z5XZodDoSOQKUzW2iLmRXIAL/1cWHJMBJBD3
	Ua2+x6O7WTBjXpHvzCaEiyHnd70Atc+8ypnoPDJO6Z8aghy41YvP019mkEF42jkpe
X-Gm-Gg: ASbGncvUjKYw3mdwvXdkyunfJngdJNc/ZbHkzKtAHVzL4e2dQYhIZ5xx2UHdYddrS+P
	03hY/FJedDQ3ZfZFg4HO1WsvE8P+Q/mPIaOx/hrMyU4AfEsfeWAx4tC+JohjWJFfcpH+wKSiL8j
	hQ+IEIkFx9hG2MBmtupMcKIZeC4f6f1iTHwkEi1Oc48FtNIGGaC+QpuFycsX7ZNFV39/b5BfxHG
	WuyhuuiuPnE2+8+VO4UuuAsDLes7BDZF6xS08dtPariGaYcv6HMrtpO60vh7GONt6C54C8G6bGw
	NwrdP2r5eMIgCkbJ2AalDf/8FuswOF/Rk6G21reaQWUg3kkm7NBBrVs/HUiZVq3BBaCjJwyh1q9
	7B5JBu6jFtrKRmFPlSLUQQzUR00wBV104RA+R1Q5WhXb0HWnao20c
X-Received: by 2002:a05:6122:88d:b0:53c:6d68:1cc9 with SMTP id 71dfb90a1353d-54a61017505mr680081e0c.15.1758115903901;
        Wed, 17 Sep 2025 06:31:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwq4q64y9pQGinUlifknWoYSXhEvB2/AvQo5VNejvkufcP3u8FaU2REsxspQMlZ5mlOaHufQ==
X-Received: by 2002:a05:6122:88d:b0:53c:6d68:1cc9 with SMTP id 71dfb90a1353d-54a61017505mr680052e0c.15.1758115903272;
        Wed, 17 Sep 2025 06:31:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63f61sm5088913e87.71.2025.09.17.06.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 06:31:42 -0700 (PDT)
Date: Wed, 17 Sep 2025 16:31:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: lemans: Flatten usb controller nodes
Message-ID: <kqqaeyul4us4el7zog2gaob52o2gdji7eeiokozylgxk2gvnua@4gcprzdyhfty>
References: <20250917123827.671966-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917123827.671966-1-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfXyY847A1EM4Hh
 KeWc2T9YeLlBAPXGsm40VEQBZLdshO9rlCF8ljM+Vs63RyEgoMA0jSju1xGpk/UFDM3qpd4gPh8
 /KnKzyPpI/i8coGBwY3Tklj+D9uDj4aOkuj5khZTl5NnwfP+ewRxy8hvdwW8w2wOd84HwsB6IOh
 8Sl5qjtzLvyy6u7K/FwJnYDRU9E0owEBx/v/B9O14D12t7duT/L/I1DOuytjiTOn22FxsobyoML
 I015vrO0C44RClcqXxzAxzNEACgxWXfbRiK+icuGCAmn2wA6XQ9LR6lphfWT7SxNFISa+kZnNh2
 vwTIGOIVXcS/ijBvgUejUX58gQ6i7nOscmTFEs1i+w9qNxNkjyRoo8gi0hV9hksGyEhliDaDqWj
 f/RczJtp
X-Proofpoint-GUID: pw0XBsBagpDfk0prmsJm8rdIKlXMvQe_
X-Authority-Analysis: v=2.4 cv=ROezH5i+ c=1 sm=1 tr=0 ts=68cab840 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=J2N_nXOhfcilw9lcM9MA:9 a=CjuIK1q_8ugA:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: pw0XBsBagpDfk0prmsJm8rdIKlXMvQe_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On Wed, Sep 17, 2025 at 06:08:27PM +0530, Krishna Kurapati wrote:
> Flatten usb controller nodes and update to using latest bindings and
> flattened driver approach. Enumeration of ADB has been tested on EVK
> Platform.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts       |  6 +-
>  .../boot/dts/qcom/lemans-ride-common.dtsi     | 15 +--
>  arch/arm64/boot/dts/qcom/lemans.dtsi          | 96 ++++++++-----------
>  3 files changed, 44 insertions(+), 73 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

