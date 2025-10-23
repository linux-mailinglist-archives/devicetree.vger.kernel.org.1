Return-Path: <devicetree+bounces-230005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F272BFEAE4
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 02:06:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BDE1189A7D0
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 00:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF4E8821;
	Thu, 23 Oct 2025 00:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="japWMUgj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B15A1FC3
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761177969; cv=none; b=sLtHygMIapUetjhtSXOEp4h9ORfBxXt6HJP1jdUD0cj9nlarmsgBcYDvIqTjqAqZQ2iQlLl6XUR3EtrdAoZuXRdAyQLagnbQ1zqzlHiSLw9L3wIrSmqb2KgT3sISCn/d9rAFzmR7UEymGLTsxcg4uM8WcC8jQrEectp+kB+LzMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761177969; c=relaxed/simple;
	bh=VwFu2pqCUART756V66FC3WXoUKMk9AaNAqLUtmNd/0Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kzFnIbBXNgh1rxOwII1gEgU54Ms4DIOTjKfXh8stzGWKdO6cGSng6+AhT3coJxeMojVXcBFkWd8ULfL0MQV9iR8Dke/i5+25zbHQlEJiugdzxFdu+jJvOL+cO08Z1a6tk5+zsagk+NzW6bCqTHBZsZ9t/fl1qU3AkaJkVmHah0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=japWMUgj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MIeos6007476
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:06:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YwXZ5EJgF3RkMDIp30Ap678K
	ahXPe1cvGbyvyzD4Fnw=; b=japWMUgjE8nQcrGptptNoSttn8Ogbpv1yYLNr4ha
	Q39CrCxGNupnXejONRySS/6ELfIh0m6xBTCToB40El5q1c5iRuERXMy/g2dTNY+V
	2TaiinEnw37yx5DblQNyRgJelyaz743ojzkHd2g7L36bf0dphAouC8fucGznFH1K
	8W0rrbMDcM2rGXIiLHLi7KUgtwIWA6+aJvKPKG0nvtHgb/3mkSbUguoBRu2SagDi
	Uvj/zHHpjRC/fkSjxOKR1VQPVj9DnPDlAzqmSiidy8dvIYx8zAZjzzz4zpn4rA4C
	MszCi3mtVT9tsbQAXoY4FZE6EH6hKRR6/xPSyHr5NmMmmg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3446g1x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:06:06 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8a89c9750so7143701cf.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:06:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761177965; x=1761782765;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YwXZ5EJgF3RkMDIp30Ap678KahXPe1cvGbyvyzD4Fnw=;
        b=tTpnLdn4swI5oqltKt9pOU9FA4GaaAVFAE7XoBlprgoTJGov2OsEetjo/8CFuyxj+r
         LUIbrZE3NKto+CqErX6LrS2SD/R19DPvDWCXS2pzjuwsvIJ1pcRTFtjuQqpYe2G5rC63
         DdJsfM+8IB/8vzAq9DmuCxpnAdBhz5BINCgDQSE98KlL0PZQkXqaX7y0Apge/yCZxgnR
         HSP4EuZZCVbZsP5lTn38F9Gn+rYVJOt7G+VJVez3Q1+Qy3XpaV6zBO1CRklydmYTMH14
         PVz/qGRRl1VwRbRqdlDF8NW78B49K6uPfmgPWouzUnAU4XNXBh8pA+SUkfL0OjtpW+Xq
         DZwg==
X-Forwarded-Encrypted: i=1; AJvYcCV1syoCSioSkfQlDsWWtRv0Fp1d6OpMHPLW14/jD2kE/Ga13GdglQqNGHQoUUB0g1EijozvXte9VUhq@vger.kernel.org
X-Gm-Message-State: AOJu0YxgfTztOKRSueXenl91aXoSv5xwoe8ze7o8OXI1JmXXpeXu9J5s
	Hmd1jP7znZyfl0JJWEL0WbDqBaFcXYeYM0dfgO3siwitYLyfqf4vPfV1Cq8QrRrlj0kELhRHWl7
	y1KOV3wIxSxfGIC8vsBoVAwovq3eD0UahcLnIjkbHWofjMC4EVZbtkLkQ7zAiJwBn
X-Gm-Gg: ASbGncvzmPGiGoOxrw+/oQzh/YvG9wKcZdzUWnKT3MzR8kKqdsBTzmq1PmKyJIudMkV
	jkoHHWo9F4ini2aWbnnwoBz7+nhyPV4dsNYn1LRBb29KXKsWiNzfAVmH3QqtSnuopYAgrwQTET3
	ssEBX5MeYTj7Er6BQo+6FQIPjfqFvrGke8oPP901RKWyn+Aqb3rX4XeXAkE6mklWZt8VqZgI/hX
	UyuSMrV1CSFttBo4pLahk0TEhJKRNsT3iBwkguCjd6IqCpdBj6Ed0e1zjzOoLR/h2aJ3KdYbyg6
	z6x6DQvy73mGR7+R1b0PY60YsEY6qON0FG7qUPfvX/XLoITV3IGs9+XjVQYFxDRlYc+OdtcjXFK
	hZS4ry4IzXzK8PTV+oClERy7NHMeHzE+EAeDmbXl8izATrta7zLkNCbxdcT3jHslFsTDceShhtQ
	LmB0H23AzgkqGs
X-Received: by 2002:a05:622a:138e:b0:4e8:a9f6:355 with SMTP id d75a77b69052e-4e8a9f605c3mr220954951cf.72.1761177964862;
        Wed, 22 Oct 2025 17:06:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDNjOTVSPDTOLMhvrhjQF/rHxfIIgpodkg14JMuex89C+8dkQsRhvtmM3bkDBHfMKN9H52zw==
X-Received: by 2002:a05:622a:138e:b0:4e8:a9f6:355 with SMTP id d75a77b69052e-4e8a9f605c3mr220954581cf.72.1761177964404;
        Wed, 22 Oct 2025 17:06:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4adecb3sm237171e87.12.2025.10.22.17.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 17:06:02 -0700 (PDT)
Date: Thu, 23 Oct 2025 03:06:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Eugen Hristev <eugen.hristev@linaro.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: qcom: Add qcom,kaanapali-imem
 compatible
Message-ID: <mwin3lfvpcwxxhsub2whcpibuayk36f4ljrodvithfygqad5w4@cg4h6peh4v4a>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
 <20251022-knp-soc-binding-v2-1-3cd3f390f3e2@oss.qualcomm.com>
 <g2iviaqetgxf5ycz2otzkpmmc4goo7xuyjmttuu254bfzqqvkf@4vybjh4eghpm>
 <4eebcb7d-1eca-4914-915a-d42232233f9f@oss.qualcomm.com>
 <dwfvko3hszsoh4ihnz3qdpsugmocbkrbhosijdw5q3bxh64kuo@o74as2li74px>
 <lz4sbvzfiij3qsa4d7jeblmi2vfubc4ltf435sh6tcs53l6fbq@7f3tfm7yiyjc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <lz4sbvzfiij3qsa4d7jeblmi2vfubc4ltf435sh6tcs53l6fbq@7f3tfm7yiyjc>
X-Proofpoint-GUID: IlqtDLbhQCIootW0csI0YT6za41F1DDd
X-Proofpoint-ORIG-GUID: IlqtDLbhQCIootW0csI0YT6za41F1DDd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX9jfx/ReVcqXh
 GOgo1FVfp5mnY4P55DKgsqMhoAAvEugYmPTWM4poBz+Y+77j0JpeVlGYAdA3i7nz3ueF/q7Q01P
 rHsqwAlRPqda85RUVljQM8H3rxZYqCyM4VagtPgalvLCCjATiCHICD4rx4XTpv8Qtt9klB65nYo
 cP9/VSassN994cslB6bNZ+AJd+yxRYBetV4CYzjycF0+s8BauwMu9o4FsZ+GwBk5La40jqyLdZq
 UdBtc37hC06OVxcjF5uOUA9JcdB72qdhXpeq1yKeYGzbH4LzR79oDyDZgdMldiYKVryUW0xG6vB
 SrqTg308jHqpeFoZA/XqBsDkSYzADt/juyS00uwUxo1yovLaCSxBcZMIyd6HPKSdP9FTcCZEnoO
 mzPVdo+exkzXDgfYR9QbsqDqZxOlSQ==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f9716e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=Cw9dS9RSUmV-52qKxfUA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

On Wed, Oct 22, 2025 at 05:42:58PM -0500, Bjorn Andersson wrote:
> On Wed, Oct 22, 2025 at 12:34:58PM +0300, Dmitry Baryshkov wrote:
> > On Wed, Oct 22, 2025 at 05:05:30PM +0800, Jingyi Wang wrote:
> > > 
> > > 
> > > On 10/22/2025 4:49 PM, Dmitry Baryshkov wrote:
> > > > On Wed, Oct 22, 2025 at 12:28:41AM -0700, Jingyi Wang wrote:
> > > >> Document qcom,kaanapali-imem compatible.
> > > >>
> > > >> Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
> > > >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > > >> ---
> > > >>  Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
> > > >>  1 file changed, 1 insertion(+)
> > > >>
> > > >> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> > > >> index 6a627c57ae2f..1e29a8ff287f 100644
> > > >> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> > > >> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> > > >> @@ -19,6 +19,7 @@ properties:
> > > >>        - enum:
> > > >>            - qcom,apq8064-imem
> > > >>            - qcom,ipq5424-imem
> > > >> +          - qcom,kaanapali-imem
> > > > 
> > > > Can you use mmio-sram instead?
> > > > 
> > > 
> > > Here is the node: 
> > > 
> > > 		sram@14680000 {
> > > 			compatible = "qcom,kaanapali-imem", "syscon", "simple-mfd";
> > > 			reg = <0x0 0x14680000 0x0 0x1000>;
> > > 			ranges = <0 0 0x14680000 0x1000>;
> > > 
> > > 			#address-cells = <1>;
> > > 			#size-cells = <1>;
> > > 
> > > 			pil-reloc@94c {
> > > 				compatible = "qcom,pil-reloc-info";
> > > 				reg = <0x94c 0xc8>;
> > > 			};
> > > 		};
> > > 
> > > other qualcomm are also using imem, could you please give more details on why
> > > we should use mmio-sram here?
> > 
> > https://lore.kernel.org/linux-arm-msm/e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org/
> > 
> 
> I considered exactly this when I wrote the binding back then...
> 
> But the binding defines mmio-sram as "Simple IO memory regions to be
> managed by the genalloc API." and the Linux sram driver follows that and
> registers a gen_pool across the sram memory region.
> 
> I believe IMEM is SRAM (it's at least not registers), but its memory
> layout is fixed, so it's not a pool in any form.
> 
> 
> What Krzysztof says makes sense, but rather than just throwing a yak at
> Jingyi, it would be nice if you provided some guidance on how you would
> like to see this turn out.

I tested, pretty same approach seems to work:

	sram@14680000 {
		compatible = "mmio-sram";
		reg = <0x0 0x14680000 0x0 0x1000>;
		ranges = <0 0 0x14680000 0x1000>;

		#address-cells = <1>;
		#size-cells = <1>;

		pil-reloc-sram@94c {
			compatible = "qcom,pil-reloc-info";
			reg = <0x94c 0xc8>;
		};
	};


-- 
With best wishes
Dmitry

