Return-Path: <devicetree+bounces-245492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 229D8CB16C1
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:20:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EEA5F306CA15
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 23:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6925A2FF655;
	Tue,  9 Dec 2025 23:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M/zN2Ju3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ke1wxh1b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFCB259CB9
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 23:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765322352; cv=none; b=vEvmQn0seZoRGL1i4eY5d3U7Rax4LLdOAB+w2eFSrakaElo7N4vMPxuRJlgKcVmWUxovefGY5LT/GKMABZSdah6PtCZhykwllmiNE/xTNxurrgI0U80PFs21SewtXTiC2gXdNTea4M6ceDVx8euMIafXh5MZywiYBni66WZhC2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765322352; c=relaxed/simple;
	bh=P7BlIgI78j0Ft2abSXd/pLj+t/fgR1148HKMHDHHEGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PeAnhoCkWxH4gX/zmfWRDhO3DSzVWibjjlP55wu+WMe5wAHs2otk0roaYrMVbV930Z0nh87L/wD4EPUuoXl/Xu0XGgDL8sX9qpFpYh9DmItP1vurKvjoJgH1irj3xeTdTi9wD2aRAy4UEQLgIiWRjym0TH5D7ByIUlHXicciIXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M/zN2Ju3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ke1wxh1b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9NIXQQ718002
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 23:19:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=33eYtDWErrEVXrhkyt6CXsRk
	TooydK0b0le8aFIwTeA=; b=M/zN2Ju3ZBgk6SyXrtEzrWmXwByUObX6Q4GpRgK0
	O/tO/cQ23/uNjtBdufHgqy7cKVf3pqHULolbFnC/wiwYwmWcX9JFyTFtcXCikAys
	Pg9eM0UKSpwGVfBPSc43Q7n4Xcb+Z87YIOFe3LPs1HUeOfGFYSG6H+KyllD1+kjR
	UHxZ1YKy69gWObYjaHDLeOxm/HjSaq2Vr+uZv9g9Ift7LeCVz2eJyslC/tA0nLQT
	aqIKwhbtmwQ9jW1in0vtoq+S2HzmSM7W5HS3ua6cp6b0rTKc8/3tqTQEBhgEk0y7
	QLM/9uMBgfULAz3zFFBhk/MafIt01k25Jp29P2CkWrZfhw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axjk5295s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 23:19:09 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b6963d163eso897867985a.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765322348; x=1765927148; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=33eYtDWErrEVXrhkyt6CXsRkTooydK0b0le8aFIwTeA=;
        b=ke1wxh1bidzsg1ixtZNPBR27GwD+XyamKRWBNpTwNYTs3bcXYO+yBcE4stG7xZl8eo
         7N2yfWc8mUvE9R7lb0TzyAWEmiosvTqPcN4IrKqDHzMHEBPakZDl4TLyM9tCOfOiNQws
         ahbMclw7zyPjG49fa7W7NnHsWBjt957mNCY6H1x4WW3tuHkhq6wI9WPUBOfScll8qCTK
         ebgOgKS14hUT2iitFjGmIaebRPSEDMsfC6O0cbJXWhzPF0ROHGOSD47HDs/NQqUSftjX
         bZdXmZd2MWCjlYYyuMkZVup78fqNNs8kWCA0XBZvQJXR9+Anx/J89pJq9UwUSTJ0wC+o
         cUNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765322348; x=1765927148;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=33eYtDWErrEVXrhkyt6CXsRkTooydK0b0le8aFIwTeA=;
        b=tv+opr6kT3eNxsaGJ5EZ75DTs92qi1REK1Qsn8cxLuUzpTAZVc+xT88HeVkZFE92gY
         rIS53RmOLazDS2nsZCfAzKlg53uM6+Pcf3wrDk430K6Dorj39SWbxGovJwNo+Zvaoqef
         rLRePzYPvsRVsxiWjw8uU1/UzXH/JU/Gfzv83lEAXEyNuiVIbSSQcluSNM0Sq8K5LuAM
         22W2qF2sQgOlZ2zIpXeMKDfAMMNxpxY49AXTljqurvPSWgVOcY+31Cen2XMBnPHcJpBH
         GyAxPlFBLgFoJHCZb2d0SxcoA1WT+Kb45vcL0qP0ixsAFsfmP9h1f2bAMIYxN2IwA+xn
         viLw==
X-Forwarded-Encrypted: i=1; AJvYcCWZDt4yISNzFb5pEgtQBh8nj54/zpZzi+REscCjvuoeBfgU1OzW1m9ZbMnKnxgilM4QYSVAa62fAOU0@vger.kernel.org
X-Gm-Message-State: AOJu0YwEkgw76oAsn1alcz4JHcm3FK+I1MTIOnDIasBsAwdnYdvqcMmn
	xLBSMnTi7ZtyhMWWUx9FYmTor296yeY56S7/S4x+42lIfJOAAfEoN4O3j4zFo0HHl5m2RqQ/eG+
	xUchNi2mdib7HActCGb6IDoTiuK/uJfi5ZjuiGDwMgug6BcJdJ4Ylwuki9+CPUHtm
X-Gm-Gg: ASbGncuc7gsf4nyuPDlCLop5/u4UD9g3VyzTnJhXtkn2+kKBRTXx6ENh81nOiakRD0Y
	TYItM901/irQtbTJwf4e755vlN1YKPA2f6UA0A+Tvnq/d9K4VFToVz7+tApfNRvgOHVe5+SnWzw
	BdVhvKiWly2jNZPFQdLLev/omRcQwv8icRu1D37aQHKjAGCbipxA+xM3mtzeEUJjyln0dit/rXD
	my0mVinbvubAY04HY2blbg8egKIMGzjJivL3XDAbR+vjuOXF0wbnq4670tJs8HsliE/OCoVkNPf
	2jrcU+vNyYLs+ySaAI6IqiTpbNpJH8S7OgCvfXUXsue4bgwlb9ksl8htTl9aTjAq8gbVLF7QnYK
	ZqoN9U5jf3q5erOeEnspxUn+gicrgRu3H5hwvKNIrsm8wc2y5aMBcQ04zFnS2opln+Q7U3/R5Ce
	gClED78tzPLn1kX+h5TXAeWB8=
X-Received: by 2002:a05:622a:4d0a:b0:4ed:ee58:215 with SMTP id d75a77b69052e-4f1b1a0a12fmr6821211cf.35.1765322348499;
        Tue, 09 Dec 2025 15:19:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGz/HvWIDVVxjbHP2UzZinCSPKvsMUeE9RGETWdtMLYmXGOBSsrf3hH3HNvZYoC6/2bLvvQnA==
X-Received: by 2002:a05:622a:4d0a:b0:4ed:ee58:215 with SMTP id d75a77b69052e-4f1b1a0a12fmr6820891cf.35.1765322348080;
        Tue, 09 Dec 2025 15:19:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c2e4afsm5639304e87.95.2025.12.09.15.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:19:07 -0800 (PST)
Date: Wed, 10 Dec 2025 01:19:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        vkoul@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 8/9] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <4f3og44prqjjxsiy5lwnxam3ikqylvmk3m2ofsxoa5byczhs56@3uvxjtobddxf>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
 <20251209-linux-next-12825-v8-8-42133596bda0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251209-linux-next-12825-v8-8-42133596bda0@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 9glNrqO-P759oe4AOwnj6wYbvuObIpEM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MyBTYWx0ZWRfX2kp8MCLUl/uR
 ZO7zh7ku7W32+u24z94Cke+2aDpt4r25hYPvZ4y6Mj37I0u/2Ph6qfVkmC8DWcsG4sMZUEyxRlC
 Vv6EROaDdFs6wZHQbXvoKjgINm7Y1VyBn+NMSdTlUTxR7a/3gdByJQ2PFaaQOYbhR8WKvRJ68aO
 SmSrZuqFc76GFlg/fMLURBTXTZRnbOyzDJqD2FaoU2ZJr+WmNwbw/GeBARNCv0gpapbhK86miRs
 c4xnWkZ5luazYAMV5MjucpVXRp5CVaoPLjjFo4pmxKtnuauoamcJpR+ARmkScAlnAXfrzd3WUO/
 s/STI4GHYV1oINZFsjP6pOdgak472sQnwrICnFbffY1l+b9HsqWEUeytsm+LHNYi4Mn5It2PFau
 edbc6eI7rNSxXsVRS7m3tJDvSh16CQ==
X-Proofpoint-GUID: 9glNrqO-P759oe4AOwnj6wYbvuObIpEM
X-Authority-Analysis: v=2.4 cv=RqvI7SmK c=1 sm=1 tr=0 ts=6938ae6d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gzIeawRUdsEZb0YUvHYA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 priorityscore=1501 malwarescore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090183

On Tue, Dec 09, 2025 at 03:09:44PM -0800, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> There are also some PHY init updates to modify the PCS MISC register space.
> Without these, the QMP PHY PLL locking fails.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 285 +++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h     |  17 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h    |  12 +
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h    | 639 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h   |  33 ++
>  .../qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h   | 224 ++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   2 +
>  7 files changed, 1212 insertions(+)
> 

Does this work without DP tables?

-- 
With best wishes
Dmitry

