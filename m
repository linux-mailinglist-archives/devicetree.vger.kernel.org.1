Return-Path: <devicetree+bounces-248514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 57902CD354B
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 19:46:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D1D7B30011B5
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 18:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B892DE701;
	Sat, 20 Dec 2025 18:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TPgW6pC3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HjxDYcUL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981F4288C34
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766256399; cv=none; b=tgEDCy7UEVQxbfhtAQdCixhczvolxr3Z0HIM4Dq76fN7wOfs+zfe6yPx2KLmhuQmbjWA8NTi4iTB6T4TkfCpEjCJmBshO7NdT2vU1yMqzJU0tSH78gQ6l3NEAlVgD8N0sF35tB72j/T/EcK1OSVfTuSaMThJdWkHZ6jOpv3a/+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766256399; c=relaxed/simple;
	bh=BpupUp1ebs/DxUmrrn/qiTDyThBUAh3+O+oqvVyr7M8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=npV69TS5EIuNLmKgE4tZ3UQs0fCxt8rlZyE72VElytWJP2UvWCtsPStc7uMrhzGsejsPTDGH3Mzi7JEp++41Btse0+sV8eUedB27/cohJrLigmrWntcoGotjsx8AIyrbwEgHmGtcjdTxyr65ehWAFxc3GK2beufN95+wqv+SA+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TPgW6pC3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HjxDYcUL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BKBP1mN4136296
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:46:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IbPX7xXLFltcA+GI8ZH0YxvDQ/DbV3/cp/n1CJuPslI=; b=TPgW6pC3LdOlkpiz
	9Qo8b6pPWvrxVtBVLDl/H8AdUqkEpnWjHPYPm4B1/N2nZDvpD0Py2dkRUvo1HWwE
	lGUN1Kr3iuKJHfFympfw0FAzd5v1O3CHo+iMonP9C61CCHT3sutRWyiSYG8oxfBd
	aeUFCGjV52CtzuSWL8pX5tDER13F9wyf9E5RFIwi1Vbuecwf13jxKonWVltK2B2z
	MWcf4Kv6waRusZ7W+y0UsfVylabhhmiL2hCMiecQTNOdBhAF0f+hduKxcYQJG3KF
	BUx+RvFop1vIybSwsX6MsoqyWv89jIvpNPzUKJFIxPAwjzv7A5IMPikSqbZZ149P
	/espRw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mvfh4qg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:46:36 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0c1c57bcso88988381cf.2
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 10:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766256396; x=1766861196; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IbPX7xXLFltcA+GI8ZH0YxvDQ/DbV3/cp/n1CJuPslI=;
        b=HjxDYcULmaFTsC52zdTfSZtIcrZpwQoy6H+WGIhns6wHPQITnF+G/bj7ddJo75vsBl
         z6TYkDn1jwrmNTNZV+oBEbPhAJRtUxSRT4P20U7hUyyJsxRGwr/AFqbwhOFm2ZLmBzv7
         jpjMMZ+8ouYoAz4Rv/S9i+1xmaWR+h7GxjOdUGVV/Aiy6Yt81NT8vWfp/LUCdIAvcIpq
         x0W/GnR+4jmV8OMUJs1+ChOF8NoVsZPuQo95rYEW4ZUTtWAjE4uCSJRTQpT5wdMvgjmR
         3J5pDz3TMCR9bNY1TBhVQoHXxP5ZP48y2naQtC+rWCjUd+w19Mzk7GrRVnCQ9XncaSSk
         rC7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766256396; x=1766861196;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IbPX7xXLFltcA+GI8ZH0YxvDQ/DbV3/cp/n1CJuPslI=;
        b=s2kkOk6sqhU0QQxWVOMemDNFshzzT4QtNz6eCZ5pr5blPIEiavvRVngPK7mNB0HvhA
         /HlzTztKdLO/Ma+LIspl2Ls53943g3UOxQaJutD23v/QuIYyliPi+sMSBoHlgCpNTFc7
         jWlVrG+d09JDXl8MbqWHYtdezVXnPEcGuNi1kH2kC80Kkf3YYq38VYiZc61bKir+rqYz
         4U/FwfsOwZMnUuiCyGeXeIK/DTmKp5dIwIMFXXGl9DUcrYiz9u5qZNvwSqJf/2vnm+vD
         w/1BCjTee7bX8yZ3Uz8/tlvlnvQo7nTqMkVt3M0+2vtxwKktSiZtdhmXTIXfOYUBmW9F
         SHOg==
X-Forwarded-Encrypted: i=1; AJvYcCXWTuMDnZVZ3K9Qh57piH1h/BBuj3o17fmhEsIpz76oVKuqk3dvAykpU+xwwbARRzOUEb4i72eM2ldj@vger.kernel.org
X-Gm-Message-State: AOJu0YzoTxEaxwOylT3hvx8JAz0gXyJUMVIHs3mx0FuMIY9j3VrEhr9d
	hZQgz0mELH6eXair9xRKXaCFaLI2iTA3JUXTe+EdoMvY2HheQ6sZ30r/6AbJEusyotlNfghV4Ji
	eSAxQQ1wLRYt88cG+KM4w8EL66nieDi/kytB2po0PXhW4CushXXhQmbg3tdj5TX3/
X-Gm-Gg: AY/fxX4lYIg5a/gUVlz1fjFY91QyXugvG07yB4AKMXgRevHWWBhwMMOlSTxvyoHlpHe
	SHBI3aQjHMucjgGTRlifZcIH/RbdhQNck3U/0dNrwJ74uAMWIqzuJHYqsFAOJCNC7ZzUGSndQRo
	fFbptRY8evBBb6GoWs6oZhnahaV/tCtl270uPFmo8swgtn2p2RPJwRMMifOohOw2xeneOzDi3lg
	n2CFzhDKhL9L8WusWPmZP3iURdevKPLOZU6ztwZzXGw8rsjs/RGdssqiYas6bnNrVnHUn9mXfQ/
	pTfRN7apQPMeY+72dm44mw/aQfFM8tpK/d+KRIbzZWrBkTRixODi+rRiQ0kl1M+oSHvLMm6Huk+
	Vx59KNalrtE4IYUScbHBje/wu9Hh0O9yq7EXySCymufU1yuoqp7GkAXUgzYsvfcwyIdy5tzKGKs
	/TWvarCPK736wjWKJGetrvjB4=
X-Received: by 2002:ac8:5745:0:b0:4f1:e97a:db01 with SMTP id d75a77b69052e-4f4abdbc47dmr103110891cf.78.1766256395790;
        Sat, 20 Dec 2025 10:46:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpHu9uqqgMrOC1+shHgpX+qk1V6B7p0O0zhTqm6ZuxsV+gz6cXz1++NQHAslsS8wkQUtqrGQ==
X-Received: by 2002:ac8:5745:0:b0:4f1:e97a:db01 with SMTP id d75a77b69052e-4f4abdbc47dmr103110621cf.78.1766256395318;
        Sat, 20 Dec 2025 10:46:35 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812264c8e9sm13045841fa.33.2025.12.20.10.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 10:46:33 -0800 (PST)
Date: Sat, 20 Dec 2025 20:46:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
Message-ID: <k5b7rixvjtfxwatsg7ahmrutcruuxa4rxecprnbni3kvtfbcuo@26falgq6n24s>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-3-32271f1f685d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251219-upstream_v3_glymur_introduction-v3-3-32271f1f685d@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H8rWAuYi c=1 sm=1 tr=0 ts=6946ef0c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=Ti0TsXcDsF0WlmrKzgsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: pCHViNcq4Yl1hScrkYOe_EeshrTFfbxA
X-Proofpoint-GUID: pCHViNcq4Yl1hScrkYOe_EeshrTFfbxA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDE2NSBTYWx0ZWRfX6ZcH9KjWU+01
 vWKAF6i2YTJFQdg4x+1dMGhhG23Q6K6izci7LWu6PQrCpTON40YT/OA92e90P4hzs3mCU/OYdOG
 5plGqlIjDxf0uENO3hdm/4buAfxTCMhxrfioYDz7LdPJxEca6+sjn9f+9hYBmSKeEB3XSUwunzA
 IVrhwd8qqKlvQgJET6vXWpJ0nfom55UKQLOHkmcwoPzdwEWyonaOaHanmhjSswEPJvWne+S+hjl
 w7gLreo8+kXHx6WEtCuwdR6e37iKX/sf6fdF96xSPbFZjwzoWeY03yr2wsUdjdGKXLfTwGnMviw
 QtIfijKoKGQE3lxcoE/DVXwAZEBnkfZWTtqolao1C14FPIKiy86gAraBUeAxKDHdzm9CwDcCPR0
 HDMRPHAjgAEb//ScTRjdF1srQvpFx9L/nx37cPacGkcUHhdcnK6FaEA7AzWo8iBRX5Fsij3eTjC
 Jy3Pvm2bkS0bV3IDCVA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_04,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512200165

On Fri, Dec 19, 2025 at 08:16:56PM +0530, Pankaj Patil wrote:
> Introduce the base device tree support for Glymur – Qualcomm's
> next-generation compute SoC. The new glymur.dtsi describes the core SoC
> components, including:
> 
> - CPUs and CPU topology
> - Interrupt controller and TLMM
> - GCC,DISPCC and RPMHCC clock controllers
> - Reserved memory and interconnects
> - SMMU and firmware SCM
> - Watchdog, RPMHPD, APPS RSC and SRAM
> - PSCI and PMU nodes
> - QUPv3 serial engines
> - CPU power domains and idle states, plus SCMI/ SRAM pieces for CPU DVFS
> - PDP0 mailbox, IPCC and AOSS
> - Display clock controller
> - SPMI PMIC arbiter with SPMI0/1/2 buses
> - SMP2P nodes
> - TSENS and thermal zones (8 instances, 92 sensors)
> 
> Add dtsi files for PMH0101, PMK8850, PMCX0102, SMB2370, PMH0104,
> PMH0110 along with temp-alarm and GPIO nodes needed on Glymur
> 
> Add glmur-pmics.dtsi file for all the pmics enabled
> 
> Enabled PCIe controllers and associated PHY to support boot to
> shell with nvme storage,
> List of PCIe instances enabled:
> 
> - PCIe3b
> - PCIe4
> - PCIe5
> - PCIe6
> 
> Co-developed-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Co-developed-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Co-developed-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-pmics.dtsi   |   11 +
>  arch/arm64/boot/dts/qcom/glymur.dtsi         | 5700 ++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/pmcx0102.dtsi       |  132 +
>  arch/arm64/boot/dts/qcom/pmh0101.dtsi        |   45 +
>  arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi |   83 +
>  arch/arm64/boot/dts/qcom/pmh0110-glymur.dtsi |   83 +
>  arch/arm64/boot/dts/qcom/pmk8850.dtsi        |   70 +
>  arch/arm64/boot/dts/qcom/smb2370.dtsi        |   45 +
>  8 files changed, 6169 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-pmics.dtsi b/arch/arm64/boot/dts/qcom/glymur-pmics.dtsi
> new file mode 100644
> index 000000000000..677dd1b74db0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/glymur-pmics.dtsi
> @@ -0,0 +1,11 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include "pmk8850.dtsi"		/* SPMI0: SID-0				*/
> +#include "pmh0101.dtsi"		/* SPMI0: SID-1				*/
> +#include "pmcx0102.dtsi"	/* SPMI0: SID-2/3	SPMI1: SID-2/3	*/
> +#include "pmh0110-glymur.dtsi"	/* SPMI0: SID-5/7	SPMI1: SID-5	*/
> +#include "pmh0104-glymur.dtsi"	/* SPMI0: SID-8/9	SPMI1: SID-11	*/
> +#include "smb2370.dtsi"		/* SPMI2: SID-9/10/11			*/
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> new file mode 100644
> index 000000000000..eb042541cfe1
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -0,0 +1,5700 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include <dt-bindings/clock/qcom,glymur-dispcc.h>
> +#include <dt-bindings/clock/qcom,glymur-gcc.h>
> +#include <dt-bindings/clock/qcom,glymur-tcsr.h>
> +#include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/dma/qcom-gpi.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interconnect/qcom,icc.h>
> +#include <dt-bindings/interconnect/qcom,glymur-rpmh.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/mailbox/qcom-ipcc.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
> +#include <dt-bindings/power/qcom,rpmhpd.h>
> +#include <dt-bindings/power/qcom-rpmpd.h>
> +#include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/spmi/spmi.h>
> +
> +#include "glymur-ipcc.h"

What is it and why is it being included this way?

> +
> +/ {
> +	interrupt-parent = <&intc>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +

> +
> +			spi19: spi@88c000 {
> +				compatible = "qcom,geni-spi";
> +				reg = <0x0 0x0088c000 0x0 0x4000>;
> +				interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&gcc GCC_QUPV3_WRAP2_S3_CLK>;
> +				clock-names = "se";
> +				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
> +						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
> +						<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
> +						<&aggre3_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
> +						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +				interconnect-names = "qup-core",
> +						     "qup-config",
> +						     "qup-memory";
> +				dmas = <&gpi_dma2 0 3 QCOM_GPI_SPI>,
> +				       <&gpi_dma2 1 3 QCOM_GPI_SPI>;
> +				dma-names = "tx",
> +					    "rx";
> +				pinctrl-0 = <&qup_spi19_data_clk>, <&qup_spi19_cs>;
> +				pinctrl-names = "default";
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				status = "disabled";
> +			};
> +
> +			uart19: serial@88c000 {
> +				compatible = "qcom,geni-uart";
> +				reg = <0x0 0x0088c000 0x0 0x4000>;
> +				interrupts = <GIC_SPI 585 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&gcc GCC_QUPV3_WRAP2_S3_CLK>;
> +				clock-names = "se";
> +				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
> +						&clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,

Here and further, please keep the entries aligned (as they were before)

> +						<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +						&config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>,
> +						<&aggre3_noc MASTER_QUP_2 QCOM_ICC_TAG_ALWAYS
> +						&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +				interconnect-names = "qup-core",
> +						     "qup-config",
> +						     "qup-memory";
> +				pinctrl-0 = <&qup_uart19_default>;
> +				pinctrl-names = "default";
> +				status = "disabled";
> +			};
> +
> +
> +		pcie4: pci@1bf0000 {
> +			device_type = "pci";
> +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> +			reg = <0x0 0x01bf0000 0x0 0x3000>,
> +			      <0x0 0x78000000 0x0 0xf20>,
> +			      <0x0 0x78000f40 0x0 0xa8>,
> +			      <0x0 0x78001000 0x0 0x4000>,
> +			      <0x0 0x78005000 0x0 0x100000>,
> +			      <0x0 0x01bf3000 0x0 0x1000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config",
> +				    "mhi";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x78105000 0x0 0x100000>,
> +				<0x02000000 0x0 0x78205000 0x0 0x78205000 0x0 0x1dfb000>,
> +				<0x03000000 0x7 0x80000000 0x7 0x80000000 0x0 0x20000000>;

Also not aligned

> +			bus-range = <0 0xff>;

0x00 0xff

> +
> +			dma-coherent;
> +
> +			linux,pci-domain = <4>;
> +			num-lanes = <2>;
> +
> +			operating-points-v2 = <&pcie4_opp_table>;
> +
> +			msi-map = <0x0 &gic_its 0xc0000 0x10000>;
> +
> +			interrupts = <GIC_SPI 505 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 508 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 509 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 510 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 511 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 512 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 944 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7",
> +					  "global";
> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 0 0 513 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 0 514 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 0 515 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 0 516 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_PCIE_4_AUX_CLK>,
> +				 <&gcc GCC_PCIE_4_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_4_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_4_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_4_SLV_Q2A_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_NOC_PCIE_4_WEST_SF_AXI_CLK>;
> +			clock-names = "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a",
> +				      "noc_aggr";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_4_AUX_CLK>;
> +			assigned-clock-rates = <19200000>;
> +
> +			interconnects = <&pcie_west_anoc MASTER_PCIE_4 QCOM_ICC_TAG_ALWAYS
> +					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					&pcie_west_slv_noc SLAVE_PCIE_4 QCOM_ICC_TAG_ALWAYS>;

And here too

> +			interconnect-names = "pcie-mem",
> +					     "cpu-pcie";
> +
> +			resets = <&gcc GCC_PCIE_4_BCR>,
> +				 <&gcc GCC_PCIE_4_LINK_DOWN_BCR>;
> +			reset-names = "pci",
> +				      "link_down";
> +
> +			power-domains = <&gcc GCC_PCIE_4_GDSC>;
> +
> +			eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
> +			eq-presets-16gts = /bits/ 8 <0x55 0x55>;
> +
> +			status = "disabled";
> +
> +			pcie4_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				/* GEN 1 x1 */
> +				opp-2500000 {
> +					opp-hz = /bits/ 64 <2500000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <250000 1>;
> +				};
> +
> +				/* GEN 1 x2 and GEN 2 x1 */
> +				opp-5000000 {
> +					opp-hz = /bits/ 64 <5000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <500000 1>;
> +				};
> +
> +				/* GEN 2 x2 */
> +				opp-10000000 {
> +					opp-hz = /bits/ 64 <10000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <1000000 1>;
> +				};
> +
> +				/* GEN 3 x1 */
> +				opp-8000000 {
> +					opp-hz = /bits/ 64 <8000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <984500 1>;
> +				};
> +
> +				/* GEN 3 x2 and GEN 4 x1 */
> +				opp-16000000 {
> +					opp-hz = /bits/ 64 <16000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <1969000 1>;
> +				};
> +
> +				/* GEN 4 x2 */
> +				opp-32000000 {
> +					opp-hz = /bits/ 64 <32000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <3938000 1>;
> +				};
> +
> +			};
> +
> +			pcie4_port0: pcie@0 {
> +				device_type = "pci";
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +				bus-range = <0x01 0xff>;
> +
> +				phys = <&pcie4_phy>;
> +
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				ranges;
> +			};
> +		};
> +
> +		pcie4_phy: phy@1bf6000 {
> +			compatible = "qcom,glymur-qmp-gen4x2-pcie-phy";
> +			reg = <0x0 0x01bf6000 0x0 0x2000>;
> +
> +			clocks = <&gcc GCC_PCIE_PHY_4_AUX_CLK>,
> +				 <&gcc GCC_PCIE_4_CFG_AHB_CLK>,
> +				 <&tcsr TCSR_PCIE_2_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_4_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_4_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_4_PIPE_DIV2_CLK>;
> +			clock-names = "aux",
> +					"cfg_ahb",
> +					"ref",
> +					"rchng",
> +					"pipe",
> +					"pipediv2";

You can guess

> +
> +			resets = <&gcc GCC_PCIE_4_PHY_BCR>,
> +				 <&gcc GCC_PCIE_4_NOCSR_COM_PHY_BCR>;
> +			reset-names = "phy",
> +				      "phy_nocsr";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_4_PHY_RCHNG_CLK>;
> +			assigned-clock-rates = <100000000>;
> +
> +			power-domains = <&gcc GCC_PCIE_4_PHY_GDSC>;
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "pcie4_pipe_clk";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +

-- 
With best wishes
Dmitry

