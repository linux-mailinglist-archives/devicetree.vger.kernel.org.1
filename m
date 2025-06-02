Return-Path: <devicetree+bounces-182136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60590ACA967
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 08:17:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 664C5189E10F
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 06:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38FE1198E60;
	Mon,  2 Jun 2025 06:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="euq5XaOu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F2717BB21
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 06:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748845068; cv=none; b=WbBbcC5c2RbkfHKHrZWLzDoOPLXk5mmkqIdA/YuKi7BxHu7u8vrjr2VkuADg+TbA/6eGtAoa/BzO4dgKWDc8AX/35E+k1ytL4DckgOxY5XwJzSFg9rHg06LYGOT4XJ6PeI2WDQK/onHO0ez5YdCyTV51WReMJR/T7UTLxYnpfb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748845068; c=relaxed/simple;
	bh=CPZaR4EI368+qAI3lHWNS2wXQVdHRdGqRCZIxygqlUc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GpY4JqoqR/6kdkW9HVmBflpKoNH3+2ITDN1Fm2zCON/QmXb7Xk0NmNRG+imt9ghU1bNUuYF817vIfs4scQ1Wi1ohMbBhHcKdJA8rQdo9cxXxbt4SfWB5FJ3iXICOKjrcaU3dsdeKvWKwSvKNMTc6/HAWw52yOrSNxAueo0z65Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=euq5XaOu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5521i2aI017335
	for <devicetree@vger.kernel.org>; Mon, 2 Jun 2025 06:17:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uWhhuDrzJ7payPyIOKXiW673
	AvOva7B7U3C0U9pnehA=; b=euq5XaOuYWh86iSwhgsrlsNO+OuI8kL5F+GKjV3n
	mXv+Pn8XGh5G014Z0gKEkLqTpNe4rdYWblFrUl4ZPYsaOxnJU9pfIVqQ+8+0oFIw
	E9SkRUU8abO9Nn2ECJ9/26keA7WuhrUFBV9WANWBqg7V9Tef+kot032a3D+/GHHQ
	pXG314+MxTJUAXlYOoFQcW6Bu3Zq34ecomILrMZrVMMYW7mkXJSpnq4nU1aiUVpk
	D0/OnHMbwCtJhJyJgNx90kxhh9xzDHYSUCtTJaOPk54wovX7oWoBEFnZIZmOHGGU
	YZF3pMYZM0RL4uGchiaxBuZc/HKQM4w5i3vBeDKmYT6XLg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytxm3hdg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 06:17:45 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c791987cf6so816653985a.0
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 23:17:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748845064; x=1749449864;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uWhhuDrzJ7payPyIOKXiW673AvOva7B7U3C0U9pnehA=;
        b=paFgI1GvVifk1d/Ve3w4mbCEj2T1yssAQEuNrW6jkGdEmOuRpZWFL9Jxc52ozuE4lB
         uEEr0QcBhDtCCiKI/Ms1upI2tFdl529DD/4tVkdzB25ZUSHtNbWIGcofiqj9/owDLhp3
         W1LbgkoofKtmJexs4iaH+n4toz/phbHZk9cldL03Ja8GUobx99F/H4G1gLcBezB0Xgt4
         WO66qdUn7+sWP4PieEdxYw1E2jr3p6TvcXtau8QKP1HvbH2QMi6ddYNV8haOcNiXpzSj
         PCJ/vEbNeUbaFN5kazSV4FBJK4EtEsuVvO23syLlMHrhsYI8ljZJuYWfppXH5geSpd+2
         8TKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPUWzyniLaybnjKlIg1Opf+dezq/fWR7mApi7wrG6RlkroCoZBq/7hw1TdpF3H5UvpkTes2xpQ4HAp@vger.kernel.org
X-Gm-Message-State: AOJu0YwX1+nAdHtfqAgfsDUogfwhQa8C+2WxMmxQdDeJligtIzb5teWC
	hfG7pfjAZvuSEjUXXuiR0Yw0v3ppbiaxrXXD4Rb4/73XdjAIiedoqHB9+sgZd8woEe80PaSKeqF
	aGTU2y0tR21BTEw7HxTIEifl8q29fgsqao7rBikkRBB8F4o3GIZncaCoc2bUfP0L+
X-Gm-Gg: ASbGncucDwuLOsK/+YrNyxslFrvN1GzPF7/TfmXAoLKbaOmmXti1Ku5/yB6pLer4sSb
	kBTtd8Q+LsSAKUXb31ehrVGg5igrbI1D3vQFFf5yKrnl48F/61+dibtX/LhzHW3MdOkOc9Q/Uto
	BT7mmVPr8KBA2U1wpJy8IU9cy8ATiadTTJJabE4i3VBWGMgDRnGrIaNjAek9L9Z58O/FEaCpBtS
	D4lcwhjrOWyoFOe7vFYt6VYuNjIanqKh0UZdfDMnK6KP1NEdXUWQoxDPJRcGHubqsE6+0QxcsmL
	537vS/nV6iB2BwRm5VT03IGcbXP5A6UyEPs+3QVnFlBtNHUQ2ucIyN07I7ubRh1H3LwuD1AMDcI
	=
X-Received: by 2002:a05:620a:1914:b0:7c9:6707:b466 with SMTP id af79cd13be357-7d0eac3ef5emr994660885a.11.1748845064653;
        Sun, 01 Jun 2025 23:17:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCTsG7gNV2L9uzFU78EGu/HBkU6UsfPpuVFGPKTZpetTg4RTTOeadhiy1mD9FC/+Ns4ZATsQ==
X-Received: by 2002:a05:620a:1914:b0:7c9:6707:b466 with SMTP id af79cd13be357-7d0eac3ef5emr994658285a.11.1748845064325;
        Sun, 01 Jun 2025 23:17:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5533791cde4sm1476155e87.192.2025.06.01.23.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 23:17:42 -0700 (PDT)
Date: Mon, 2 Jun 2025 09:17:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: fenglin.wu@oss.qualcomm.com
Cc: Sebastian Reichel <sre@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 3/8] power: supply: qcom_battmgr: Add resistance power
 supply property
Message-ID: <4jnxp3pnr4aqy6jaqxnh7ki3uhf7q3552jxs3ixd6imtqlmrei@snohn5bjyt5w>
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <20250530-qcom_battmgr_update-v2-3-9e377193a656@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250530-qcom_battmgr_update-v2-3-9e377193a656@oss.qualcomm.com>
X-Proofpoint-GUID: M8pXBNWlSLAE8jL6EnpSeeBj4dA28rAm
X-Proofpoint-ORIG-GUID: M8pXBNWlSLAE8jL6EnpSeeBj4dA28rAm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAyMDA1MiBTYWx0ZWRfX3f59DW/xMm23
 6I7Kbzozc+LdADCTt0wHuXDknwCzjNR+ENacqA8pUCmJzt4euIMmfYQAr9hc6iG7iYVgTD7IT2U
 R7abIrD0QCtMXTR/rTewt5nh1YxYZNizGDe5yQG/VnDaX5HK80SZ3s/YEuWVfWuOUaie3BT6G8j
 Og1Y5pgJXgAZHN2DajPEq5Enen6W2B+uygt9FszUeOk2VdETcrZPITXpLUdwjU69fWlUcQ7ITS1
 Htij3I7I0HLLGQ4BcN6WqFJCO85DpHR6GsFOuvLwY8sf92BzWZ0ti88d/m9DjT2VQe3sar0uGE8
 4CungPNU2UqZVxWKsIiIJ4eZf+4ChOV1Sc4j+lc8KjfP115yG1kYyVyD+Va5iHsxYLYlpsXv1U2
 Nt3YB7hZaWRd103vF+RsDKmcPAhN4fEvPiU1a71nZ5m5bn/axxSM7rP9D8qTydfAORta/Yh6
X-Authority-Analysis: v=2.4 cv=XdKJzJ55 c=1 sm=1 tr=0 ts=683d4209 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=zDes-GqUf9req-RX5QcA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-02_02,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=857 spamscore=0 lowpriorityscore=0
 suspectscore=0 phishscore=0 impostorscore=0 clxscore=1015 mlxscore=0
 bulkscore=0 malwarescore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2506020052

On Fri, May 30, 2025 at 03:35:08PM +0800, Fenglin Wu via B4 Relay wrote:
> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> 
> Add power supply property to get battery resistance from the battery
> management firmware.
> 
> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> ---
>  drivers/power/supply/qcom_battmgr.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

