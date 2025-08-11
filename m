Return-Path: <devicetree+bounces-203199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C313B205E6
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 12:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 262F518A3257
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 10:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4C02367C9;
	Mon, 11 Aug 2025 10:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CbqRhEV2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996C72367C5
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754908971; cv=none; b=Uzp3ozHBqFOWiUo7EvyDfkqWYCfw5Tu5hAPJwfgdgZUF5G1XYQ3b3nDMqxAUr13gCTOqPfBNaR5y0bg6RQp6+1/MBoHO+XePq4GjLVFivVfmEgUuqotZZxMaB1NHfNkXYevkctJJ9QPCYA1ZnlZjlCR6KRbgHCQ2IgxH3m9yRyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754908971; c=relaxed/simple;
	bh=mOqDDZoMPgZc/q2InubECuGkg+D4J7jCU/bx+daf1oM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LNk2Mcat4PCkmmv9BOaBFtG6O1UxYP5ZWgZBLuobEkUbssAXVUw8LCZEa6KAxqbfpSJ32Lrfumw02wt+ZrIzSOwzlXOeyfUHviJWc6vFmowORA9ke0+TgazJcNWOrRxZ/ZvShtz+zNVDQMohQOYWQMGaHs1a66QHzioRc+Z045Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CbqRhEV2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dE7A013175
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:42:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Pb7PNgxyX6af/pkPAfBKFKXl
	YtK2ycRVMe0bVzsJyyw=; b=CbqRhEV2s2G6zCU8ZygCmMY3mtRh20yFerIav3WD
	fn7XdFh7JP40C6JZvVG+w2gR+FF7zDRESbjE0VYchl4Ux+UZCItLU80TY6GjeOyn
	44vHuvmqyamxOcic4b+Odul41hqRMd7pV0Dc5A6S/PD6hp3NY5XcdO8FlNwROWAM
	7c0wE18Bm76cN/iHwSfV7rwesq9o5/mNDxL8b5W/yYmA8sfydE7AmxUWwSWmCgk/
	zgXz5bEDhH5oFjh6UewbgLJPwvOnuzsYwDHlDsq5Y4KXPRYR7NwNZP0XlYmOvW/O
	7yTO5EHbL26pcvvUaJaaOuo9GBeutoUwam135Paq0zN0/A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dupmm6b1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:42:49 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b08d73cc8cso119879381cf.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 03:42:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754908969; x=1755513769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pb7PNgxyX6af/pkPAfBKFKXlYtK2ycRVMe0bVzsJyyw=;
        b=aQcqRsZhVnLZMNrQnL8/D1ofd2u9ALDUc8iUtNNDf5fjWPNNb3WMmwW95tXlxJ1X6z
         5zWWKJh3MzLIWJWK2Knq2HBl0zOHkDGy6T60JKRlMWr56eYAZ82xQeKgs4lT0LlXlGYL
         AUR2xfiwXrO4nwFwQPeYMnzFPp8BQnySTKcb7iJ47qiCKsXLf3pIK/4xVp+/e8jwBoK5
         RtHL68auMCiaje9gNXgUxSiGKSvXpXHTeuOtuNDqGUkM+M+n6MlZdPolJlUfX7mHKc8x
         uVsKHmQZWLEiw7XAbVkA82E6wosphTYrcFdMybp+U1DUCBi+lt+ZZTiHFfwv9Bg5y5Sz
         bwZA==
X-Forwarded-Encrypted: i=1; AJvYcCXGAZorZnY2t5cYjD5s/llkDB7d1O6i1zUjSmbcEfN3yBFdo+Iy5DJ3x8yMnc8AyWILbh/d72z9c70h@vger.kernel.org
X-Gm-Message-State: AOJu0YzoPs7RYyppeKKu0xPEVIGInX3dcslYoetSWMAjRKXRmOi3pwRo
	3HYB0VZDvI1jHdlRp7iH6/FIr+FgC+2+Dl+msegV7UGYo9rR+RdzEwI90n2V5gDmx26/Qm+2cLc
	NpavoPdKKk5PCFK6HtCB3DumwqWVEM1sH+Lce0/y9sIpQI50UD7y3ZVAPQiLvY0De
X-Gm-Gg: ASbGncuMtyLEqHX37rbItVnp5bXAfvwdqI63EOeqUH7KkknAJCa2g1HbugbRCgOrVg6
	7LQK46maV39h0qd529cVJXoGm5SzyXwkGKiDdwe2Bi25IMp8Ax4ezHvada6EAjS8Y9bYR8md+G5
	tlj5vc00wcekx/jIpudFz/c2T6+j8SJj1qtDZ1D1ycSsx5Q/YHMuFf72z/BY9z9icuiHuNMWS+W
	mkBO9bzEAZogYWcfh/BYUI0LZiABHWGqqwq1ppdHaOjfibbLhNF/HmSNF4HZvrlO+SfT73sgTZU
	qqajSUg0JrQVvPYffaZ4S/Gx7VdZRa1nqZNXo377UXOlXMsjNBkWeBC+fHjIl3NczfOPehbz//Y
	mP6JXPOVN8IkhKltntWUo1GEURBLnbiV7pEXJ6NSQyh0HeM9wYQWD
X-Received: by 2002:a05:622a:4c06:b0:4b0:9c0c:f62c with SMTP id d75a77b69052e-4b0aedd616emr175052681cf.31.1754908968589;
        Mon, 11 Aug 2025 03:42:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+m2ZgpaOJNB+Ce23VikAr12x1UWOFBCp/jDY7SVCnKs0r8fMG1zNm5IJWeaCGYSHLmvDLhQ==
X-Received: by 2002:a05:622a:4c06:b0:4b0:9c0c:f62c with SMTP id d75a77b69052e-4b0aedd616emr175052441cf.31.1754908968150;
        Mon, 11 Aug 2025 03:42:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88db2214sm4161713e87.177.2025.08.11.03.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 03:42:47 -0700 (PDT)
Date: Mon, 11 Aug 2025 13:42:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_kuiw@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: sc7280: Add nsessions property
 for adsp
Message-ID: <nsdj4ytpdn55mn5l2gr23w4whpbt2ogxbaomimqoarvskz3uzs@5mbrq7jvxnp2>
References: <20250701084905.872519-1-quic_lxu5@quicinc.com>
 <20250701084905.872519-3-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250701084905.872519-3-quic_lxu5@quicinc.com>
X-Authority-Analysis: v=2.4 cv=bY5rUPPB c=1 sm=1 tr=0 ts=6899c929 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=y0QActD64cBbDUrEtRIA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: eonT58F4VwwWU5h08qyW8lWEz3U4eI5F
X-Proofpoint-ORIG-GUID: eonT58F4VwwWU5h08qyW8lWEz3U4eI5F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMCBTYWx0ZWRfX1k46z5Nx4hcG
 mApJ7IOWeqtuCB+zVo0qT21BLrHYJfkx8FS6BWUcDjBNrDLPdXbHTAUYNWXaklRcMPRAeW74amG
 1oXYKEeCWZ00UmG1kaDMm7zuGUN0pFa9C54b54YJzf7IMeQRleD8L35/BlETPwm1uNNf9Dym2qF
 Cvu7Fdpjs1l7tEjPLIAb+W9OnXi4CEtMx7n3LWWADENrcZboXc/VZShFwW92jADvoNIYnhrN7ku
 NuDA2Ty2pK2Yksekk1QNkszlYi/LwsUEzp2A32pANBX8d1GkxL3Fq55aMFoeFrl/eH3yDFCI6U3
 e8nKCdV/9huB5yplXzRwXJkh6VzA0u5KbV+qTsQhMJ4o0aeR5Fcl6s01KccfiXFP+vlRpFCw3cu
 uCoyZy4d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 clxscore=1015 phishscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090000

On Tue, Jul 01, 2025 at 02:19:05PM +0530, Ling Xu wrote:
> Add nsessions property for adsp context bank to make sessions
> available for ADSP offload.

- Describe the problem, describe _how_ the commit solves it.

> 
> Co-developed-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index b1def5611764..5a1eacb6685e 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -3939,6 +3939,7 @@ compute-cb@5 {
>  						compatible = "qcom,fastrpc-compute-cb";
>  						reg = <5>;
>  						iommus = <&apps_smmu 0x1805 0x0>;
> +						qcom,nsessions = <5>;
>  						dma-coherent;
>  					};
>  				};
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

