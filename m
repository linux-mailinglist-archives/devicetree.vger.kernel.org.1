Return-Path: <devicetree+bounces-253280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 870D1D097CB
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 13:20:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 07DA730835E4
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 12:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BBF735B120;
	Fri,  9 Jan 2026 12:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pnOB57Ap";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kkMfMgrn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C69359FB0
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767960616; cv=none; b=fOWyMe7SAtKQocQHVnJ8jBGA+eCOgepeKHJfV2jN81fMHWqDwnAxqd/mbqNjT605o7y/kACehI6wUMXzzfDk4nDK4KeJ4vFw8tm0MWEuX0O/Zk5le4bCHuoFpJu8bSouiv1WLRsXLNCD5JgrjjFsSH0tCDF/ylkaI7k+gPnJXAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767960616; c=relaxed/simple;
	bh=ZZoWXRgF9gJMvbt2/h2zqIG9Vj1NvUTMAQPFvO2cW6o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V/L+1u02MQ7XOp7xvOYJ67sh3vzpVNCYqVMcepMMZKcPUlWnDMwTDQPorRtGPKCXxHv8Ao8HboDS81/P0Yl99KjIPzO4EyTGJ4dH/f5TbqgLatrslG53C+/eR9gIYWjwLK7QXA5VWf65Q5ggLAqnTJcV5ro2yixtCAhw77SuJdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pnOB57Ap; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kkMfMgrn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6098XVh9822952
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 12:10:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hlY7jvSrSzvid+WkgmcTx0Nn5OMdwVjnZBoKXniodvU=; b=pnOB57ApRV3fHD8e
	T2DnmnB5yLsnRFm4hGIMaum0JbLWVMxbqOhJDPOunr/f4fwMJczeNZX0sZvZ9pfi
	zEqYm5ZT9uuTUbuba+D8vR1NI2ULa2PTJeUKVVabIOZ5K835gucFN/gx4tGf2F2j
	33PLxnnvWmN3Vg0aTd5tEN1+kNStYuvo0DNq97G+8q0iY7VWP3UsP8IPKtvl0lGw
	bCu+x6fRqlZUlnQO1QmrSkRmeeCB7YB+buHa5Ilw3KEvplPtVDaF3FyLD2Hk1Qvb
	e/w7UcRxgODOOfMu7esmNZw3nivLZsozlkELVX8NPCSg4MPcxMLB9ZxietR3HB5E
	3By91g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjx94gnbr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 12:10:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c38129a433so1035252285a.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 04:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767960613; x=1768565413; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hlY7jvSrSzvid+WkgmcTx0Nn5OMdwVjnZBoKXniodvU=;
        b=kkMfMgrn58JkLuahNQqisWf6zYVbso0ei4+UOaVF8TzU7kiCcQVc7bF9xzU3eQI8zF
         77rpvNJ5E8Et+G47N3XMkyaRtHjV/OsI9HAQdKYtYTRlN8ggL2Ug/jnE4X+gFLUoCftl
         qOSpZx58ar4H+c94T/HhL8UqJDbNdXKwEsvtlnhWkfl+eUag+gUV2SidZhBxlVd8sUSw
         LB9mfdCUK2Y3NXsImgNKjv3haPRs9K5Wn3d8OoNpCe7yuiMZVkfDL8XMOnfzT4C7Na6i
         tBYyVIjDKEEeGrFT5WN9jPaGMCvpUhpzT1ytZMg63bh1pFADyWfvR0L2+C7vmpxiusFD
         nS3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767960613; x=1768565413;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hlY7jvSrSzvid+WkgmcTx0Nn5OMdwVjnZBoKXniodvU=;
        b=vJLID+C/ZKro77XhOslmsfe0q+Z6JcjuTuv6qkWff7yFcwy7aHqyTYU5R+EdIBiTAh
         dMObzus6MTcPH1YLQvf5Y1nC61VihDl4aYZkoqCuE5ORHm9yuOEmJWUjTAqKDuPxZuoF
         0BtCsKzVYQAsGQreL4McmHYNR9+qLtWr0JmMuIi9HxB7mpRKTOje/S0YGMQHSZNA8KjO
         F6UJdVwdnwv+iUwDstvoN0H6FFMpdJMDqJIw8rGgQTyoDlzSUSInacKflZg+c8h4uHhH
         URX+zSndMtgDQY+KpNO+ronzKPhkCOQYGrGLsFU6A6TeXGLg6IeALG8Ajg8n1V4goNa7
         TCyw==
X-Forwarded-Encrypted: i=1; AJvYcCWw1/geXqZE09H0MjgLYMQbizvcCuzT9+5mvfNb1vwM8SuQp/95WoiPljVopDtQ1Y1CZsKhLyD6khEp@vger.kernel.org
X-Gm-Message-State: AOJu0YyEv+8RaFzppWbkOtwDUma+FW65H06Zl3hj0IhwSW1QtinxfN0D
	nR+KUKEwYx/9vlYO250QQ2NeBArNomUtdR9wfxPHABRhGc9a/BtfrQ+U3S/d+C1As7yZpCx6/1I
	tUWJaRmhKvOspn1Uu7BXXab1Gu+JFgN8nKuuY3lRIP0fa9PEeSxbIjRlyiUxDwFhHdppV2zUh
X-Gm-Gg: AY/fxX5M9BIAzNAYylvCedO+OPj2DU3qlfUy/MK85AjjDtBTtKNkgfudaMhnSo4N/qk
	npJkHBZhyaaKPnalGPTs26PkHOFGnGV2SpiPHUD8i6CF2wqHQ1iwFnUkV71DPDAFGYmJmVwKS36
	KtUjW4UA+cDhapZxsvetLFAeOUA8j3HXKLcuRZupGYbjpYvSy8QsUXyvQjCJbIa1IGpEbXmhsWu
	nOz0P4iHBuuAtb0TUljei4P9Tg2GODlRQpbCwyuuf0I8q8gWB7fNAmp97Q4uxp2iWSd5szsOvPO
	HB5dIR72ri8nGt6R2ieQywy6lVasE4MjGBLYh48NQxrA9mD86jxR7GLI5TjMhgtpee1vXtQEGlF
	XhZb4Q+602v60rV5iG3qzlFTzD/6rZesNtZMpPnul9fBQUNY7rd8xC6p3OxQJP7Xvfut9hSiBgj
	zEDZP2giJh8B1Au60kfXd6uYk=
X-Received: by 2002:a05:620a:2550:b0:8a1:ca96:5d39 with SMTP id af79cd13be357-8c38940143cmr1432758785a.59.1767960613191;
        Fri, 09 Jan 2026 04:10:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGuVfIu8gE+8QvjxtuSOow1WtemISlN7v0f/MewIG5yDsiHu3GFtV47MZwqGMh8+u074Z+Wtw==
X-Received: by 2002:a05:620a:2550:b0:8a1:ca96:5d39 with SMTP id af79cd13be357-8c38940143cmr1432753585a.59.1767960612685;
        Fri, 09 Jan 2026 04:10:12 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb8f146bsm22596801fa.36.2026.01.09.04.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 04:10:11 -0800 (PST)
Date: Fri, 9 Jan 2026 14:10:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski@oss.qualcomm.com
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: Add PURWA-IOT-SOM platform
Message-ID: <wkv4sl6hsv3dvqteh5ccliet46l7br5yzsgg27qsopgnldufly@r5vkvk4dyrn3>
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
 <20260109080000.606603-3-yijie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260109080000.606603-3-yijie.yang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=RN2+3oi+ c=1 sm=1 tr=0 ts=6960f026 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PhgHo22kut4TJJxNvVMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: trNdY4BLO-qucv9QGPpkfUzCup7x2vkO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA4OSBTYWx0ZWRfX48C8Ndec5eS9
 fDmG40PJe2XQ335BowrJhQkLIQOpOmibfaxtGCScltaywHpnZT8w994bkWyagN/PrgxTqcqxG7G
 pCea3SqdoPKbGnghcuieoqw8URHiVmQF3cKHJwAMMdbteIR8nVEROo29RZlFKkSlzbcyg49HHg5
 cs1e5j7Hby/uugVLHvPbsTFUvVwn6QGd2mfS7TlnkCjuN3J9YvxRLjPCOe004INlcQ/Bkah9bRN
 4x66NcAxHuueKtuJw5CW/H/cGh4di+9/8kL6A5nHWeTApX36/kBfJbd00dZSu8SnHrLhkFMOPnO
 UnsB2hxnSDb/0RWml+8EjZXHl8H3Aj7brTTtENdVT1LJRyxtJ7B/mcQmOd6/F2aeg34T8WHAQ4e
 cxoRpU4/WEXJGC6jntpyzoZpUZG20Jte+Egsy//w//WY6FeqIGDZMtO2JddIjrvx7mLyc6W+6tJ
 FioW096BVzD6RLIAebA==
X-Proofpoint-ORIG-GUID: trNdY4BLO-qucv9QGPpkfUzCup7x2vkO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090089

On Fri, Jan 09, 2026 at 03:59:53PM +0800, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> The PURWA-IOT-SOM is a compact computing module that integrates a System
> on Chip (SoC) — specifically the x1p42100 — along with essential
> components optimized for IoT applications. It is designed to be mounted on
> carrier boards, enabling the development of complete embedded systems.
> 
> Make the following peripherals on the SOM enabled:
> - Regulators on the SOM
> - Reserved memory regions
> - PCIe6a and its PHY
> - PCIe4 and its PHY
> - USB0 through USB6 and their PHYs
> - ADSP, CDSP
> - Graphic
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  .../dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi}   | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>  copy arch/arm64/boot/dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi} (99%)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
> similarity index 99%
> copy from arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> copy to arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
> index 4a69852e9176..16f11a81163e 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> +++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi

I remember, we were told that there are PMIC differences too. Where are
they handled?

> @@ -3,7 +3,7 @@
>   * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>   */
>  
> -#include "hamoa.dtsi"
> +#include "purwa.dtsi"
>  #include "hamoa-pmics.dtsi"
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>

-- 
With best wishes
Dmitry

