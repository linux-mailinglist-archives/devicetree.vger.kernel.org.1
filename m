Return-Path: <devicetree+bounces-190504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 908D9AEBF9C
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 21:17:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C3D4C1C46453
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 19:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8C891F874C;
	Fri, 27 Jun 2025 19:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L4M1HOc9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507421E48A
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 19:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751051802; cv=none; b=VMk52m3lMdf/VnGhV4PltW0ZsBvxVPxl5+enw7p8wF4W2lwx9LOGH9PfNCaXIXM2VyUZ2bri5Dpj68TFVYK3+9zB0JDHKU4uy/GK2k/klwQApkLUfQLYDZUlu7/tad/aqmlPuRW+4i6R9+qtkeNZkOfr/Zz0FYsFepJafl33UIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751051802; c=relaxed/simple;
	bh=RlRJcwm9a8JTqN3y1j1t/IjOBE0hIdzvwB5bYp7QhCQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KL5OSruzSQcAuggZFZIAhM9v3Zh6kp88IQqxBNGMLOje0I1hlt86RFVMIPrkxU3XJMFZQayWvRpAObzORGLvdXAnYqhubraOpCFdIofjhoKn0Lyv8V48HXMErASKxaDXRpctXks59Ijk6Rl3gRy/K6LR6r6NuOYeBvi+YA5AGcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L4M1HOc9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RBu3Cv009871
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 19:16:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TXDux9ZnYbHSwb/EPmf9T5s+8Qzuw9drVvr9rBihY4A=; b=L4M1HOc9b/2x2L4a
	+Kfmi8fcqJuqKOysuPdlyWxBmGHnO5xdsPuEgI+5ngGlA6amu0F/hr3BMoLXsPPa
	MaQBjjh1LgoBZVuc+RGvFLuKdELgEKJ9nMFmqYPaVH5jiteICxBGOBLsSOtoZght
	aPccjghvyoE19gx4OCZ+veFSJR14i6/gygqNezlux9w2exNnCasvpR47eUOHEPcU
	OsY3L2fH48E4mSnFHSi300cfAZllZNxEI1X0xSxJQfbVgbSVPRm1+WXYAgXzzo0z
	eC4SgiN6/850RsvhRglkcf6XjCbdD6vmI0qVtRTpao9EWL1qwWc9V/z4THAnEbkh
	olaI3Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g88fhh6g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 19:16:39 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7cfb7ee97c5so5688985a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:16:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751051799; x=1751656599;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TXDux9ZnYbHSwb/EPmf9T5s+8Qzuw9drVvr9rBihY4A=;
        b=cWDb8gwwa2qsYMyMRXK1RCOReNhvCSK4CC2BpedUy11LasMJ4fqswnuDteqW0UZXtA
         C0wKACHBlo/Za4DIARFktxamOkvu2Lz77QsPsaNBHB0xJbjFgU4k77X14a/Ttx80DyzA
         W9C3czpc/glwJQZgpM1WuXbXxCU4OgiLN/O3X7LRYgaLqEq3RINMX32q6PGIIfw/qsJa
         jRAwE0QeKUuSVMa2ESerC65BZeUTEzA1bwk1JmFF+oav0M4tc8yBbiAf1FTOXwkE/PCa
         TYweExSlw2Gg8b2GT/CPDYamCkrxZaXme4TgRxOOmgbBRfSlUiF10r7GSXKKPFIJkMS3
         DeYw==
X-Forwarded-Encrypted: i=1; AJvYcCVyHInWrD0f/o3b4sKsOpVKDjC+DwvDwJhiF4FzXcnAfkNOuChbQ95vPjBtlQexXKR7WfCcR6HtAgUY@vger.kernel.org
X-Gm-Message-State: AOJu0YzfmSEVj+0OaCSmEsyxnCZoLVO4owQEtMZRcQn3GdLXG6nvbSNb
	CW+pVxiLgcvlzmVRlBED3Odvq6Vm5Aq+cyjuHJO0q34upWhTv3jJVMrceMfN9Fn7hQqKXymagBi
	d1SrpUFIaOrdIhWR7KLkEInLAP+wbN+ZlkUAb0j/wpFLIJRdpGqhJAESEruV1PJGx
X-Gm-Gg: ASbGncsR4529YysHKJrHU1JRYBeOU0r8Hq20/v3BA9ChC9jtZVpP2QDCdFIYpGSBcgJ
	5F3fFgyfw2GAHyXTQ6qVwPUiWc3Kmiegp5TIKVrA7lpF8+KLWqfDBe54mbn6Zfjy/uI62nVbJFm
	JUKbFi3o/vwGHlCkNs41UnFxCSM0bFMS9c8BbkOAO1Pzlbu7kV4aLHxx8alVLG1BqmIOBXKl8Tf
	qMiZ3otTdOr23PVPuQ50xLUuoA/hrRJUnFJ881PdHRLbORhvSpl1kcaRt/ldL9yQSNdvy7cH62I
	urtY8PkRYwXszpkpENRKfHaMJEA7mQjCimFQSGxbih/98yaZKxQdkRSSNQ3KOpluum79PnwU92Y
	Q/C8=
X-Received: by 2002:a05:620a:2804:b0:7d3:c69e:267 with SMTP id af79cd13be357-7d44c28cbefmr18541385a.12.1751051798996;
        Fri, 27 Jun 2025 12:16:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAzgVSK1bhvsi8IxU2dP1+yUtNotEs7vFGntymL185tGwfB4paX0PSqMYbH7ZA9B7nCA880w==
X-Received: by 2002:a05:620a:2804:b0:7d3:c69e:267 with SMTP id af79cd13be357-7d44c28cbefmr18539085a.12.1751051798284;
        Fri, 27 Jun 2025 12:16:38 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae35363b0e6sm174318166b.20.2025.06.27.12.16.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 12:16:37 -0700 (PDT)
Message-ID: <c718dcde-21d8-47a2-9453-d98f0dd96f88@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 21:16:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: media: qcom,x1e80100-camss: correct
 description of vdd-csiphy-1p2-supply
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250627190021.139373-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250627190021.139373-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDE1NSBTYWx0ZWRfX9C0H4rkyStmu
 c5KXhJQzOyyxjlLU584ECcbNWOf/JuJDs+zhQ3lpgzzMyFfd9zBaeKz2sI3rgG0CBQIJxLJ86g1
 dkD142E+4pxcWLa9/82fK9LoUG/dVKlViYJZyslWD3n6Bd4UWuCcBuztfUzhfN75l5ffBQd89I0
 c2pdABD6NYwCMtZSQiqrLzPOYE0N7Bl/DWlu0y9uJ+drg/797ogRaqfWwaKOpt5vNIuv4p5UEMz
 GbKw0RiLJDtFtt0wJtIn9ebdVjJ99EWRzYutjzpWibIDuOnSI4Lp9pUE/CSaBX8Xuai5+YGQo9y
 ICbexNvUzyLSIlEaGqHyy3/4I+Ap0pW15v4N0+f59mnVmWxqh+UVs3VPbGik/hqaW37YuY7QbjX
 KsVMHtSyMhP4T4FsyOCytRAZbK+uv0WTFNP5siH6nwl2O7DF11/Jhb+pm5idDqQJzuMlglCZ
X-Proofpoint-ORIG-GUID: sfPRFtw6gwzWdpDjpZmni35jWx7rzm_C
X-Proofpoint-GUID: sfPRFtw6gwzWdpDjpZmni35jWx7rzm_C
X-Authority-Analysis: v=2.4 cv=LNNmQIW9 c=1 sm=1 tr=0 ts=685eee17 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=GPXLWcMjtaZN7sqBiugA:9 a=QEXdDO2ut3YA:10 a=NXw8GaxpU7kA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 mlxlogscore=824
 impostorscore=0 mlxscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270155

On 6/27/25 9:00 PM, Vladimir Zapolskiy wrote:
> Correct the given description of vdd-csiphy-1p2-supply property,
> it shall indicate a 1.2V supply.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

