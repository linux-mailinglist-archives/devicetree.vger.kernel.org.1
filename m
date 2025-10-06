Return-Path: <devicetree+bounces-223923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DCABBF24E
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 22:05:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 10DE94E2B70
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 20:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A961E259C80;
	Mon,  6 Oct 2025 20:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iC53j0zX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB811DF271
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 20:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759781108; cv=none; b=lA4pCp/AndOzUyRJVI4IDspYA1/xC+EJf5lRvQuoQ95m72WwibDlX5m3q12XUkOVSPD4H7dbKCgKiDFok8Weg0hB38AXKa8TekPWgknUs/zZCUv0XEwxwoMueCF9d1hILkVYcNuva0DAu+gsf2KRdhvOGxY8FoQuqYjvGkpK3wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759781108; c=relaxed/simple;
	bh=ZarTCEKrYJ2uwCZ0DY8fR+K1qpA/Zk8TxurjsZ7MzJI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bTEr/uLZTEsfX89iajqaEQ+0Qz9LSdGSnppgXpVPQ8kKQZiLavNMYLrN9/SypsenlZCbgFahcfk5KJxsPENSMZyqO+rUf2xBmuKGMT8komd82xjuyuY6jA7PmUeiwm/NdkvQSqOFiLluGCDajx8OLHF0LxziIwwvlkZTFo3Hmg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iC53j0zX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596FLTo2013641
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 20:05:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jXF0p/uNDuCc8V4ymUfNTV4xeJ1S0VxZNmP+RnJGw5c=; b=iC53j0zXs9ytKQKy
	X8fefj4moZ0rQP4gUwPsHF8y7HdRlXy8TJ9oQE7VwOReOwehZorKH6/H/Tc0nHth
	B0teVpPgH/BKljbXCEGXIp6POU3wMM9/jiDy2MyZ8tJ/yP9KYPuLjJdZp7Pk3H5T
	Z2vvqNJtRCiU0+ppQX8GeN3+xunE2TY9zsCBw7IPWBWg8Po2AjAIwgUF9AF8jGE2
	bFciQMBWgTlkdpKnYIWmEGozK4f1kbcok+ZMf99qFbbEGi6JU4RZBZRcgroS+guC
	ueB4rOAGSNzorqOEtjZSYLUQGxrBHE7KbXpkV5PwsW/llwkgE6F8hHJMNrJrtDlJ
	hEgu/w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49junu51ns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 20:05:05 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8544316ef6aso1929402285a.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 13:05:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759781105; x=1760385905;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jXF0p/uNDuCc8V4ymUfNTV4xeJ1S0VxZNmP+RnJGw5c=;
        b=cd3qh2E02BOMaWLkGtb6On+kMW7DQw7PoFHaya1D/ThFFccBYJ4CRSFtVKKIJsX7xf
         VSuGRO1hTi8g3vaETpwMaDjpnRRM6IP72qpZaCKlnPDPUgrWfxzAJByoBMo260WdClhc
         LngmxPJc8nX4zCH6+c2ElUzcYsw+fOx8kP0l0jO4cuUerwPgIJUdpbFIyiOMFqXej6xC
         IaT1BUgBSmNSMTddtJyfqBpQjZS28wGZlFbSCXoeDm+kqHPSa9z+DhCVfuMT9lvmmmr0
         6gKqTPqTOzweEFJcCFhhzV6mnliFhPSTzF4gNu0vL1G1abnrMHWOECdtWV8qnyoHPtPT
         wV1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWbxlZ6/gYKlFXdD9VtrwasF5X76GqkZrNvnRFKsG4GCPD4kDPtrwikAoAC0o9PnVvK4x/ozMBPLu6P@vger.kernel.org
X-Gm-Message-State: AOJu0YxHaiEL46FFb5sz6tuesOaqtwbwFvmyHWQ6iPdfvpudtzd+Ud5f
	vkAb8GWihzTCatDCfBnk8ynLJq8hj8w0nokdlgrsfpMLCg2pCMcEBlVCoKpvslPxnqOGEcg3D5Y
	WDXna0TzChEze5r62/KdO3q3Hft1AVsQVFmIp9QEoGI1d7SSInGnRO7oYiF4d6gULydrG4+55sg
	g04TfbdmxV+hJTY5w7VDX6Nll8rnryWo7PIu+iO0M=
X-Gm-Gg: ASbGnctjIAI2AC1xqRrkPC4gAPP/Tm/S+pcmy3X5MNBKXnHMRAg+hLl4mdh642MmJFK
	3l5+E6sI2plpyxRSWUhy9mXFSRZ860XRqvEekNpI9O6vet++UYNZjJ6WxDymU2FKFEH8My62YlD
	Tq5SIy2h1WwGnK294UwebJ/ns2pSwsPUoMwKnO8a0f0Fqlf9MvZ9/LOCHRCFw=
X-Received: by 2002:a05:620a:454b:b0:813:ccb9:509f with SMTP id af79cd13be357-87a36779e54mr1714653585a.5.1759781104886;
        Mon, 06 Oct 2025 13:05:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGne7xfNe8unOt/NAN2kz9eXzbxLkQJRAiVoCvhjk3dUQt0hM9XFf85nEv411q3AVZgczfBFN7PoifKbBhxgqI=
X-Received: by 2002:a05:620a:454b:b0:813:ccb9:509f with SMTP id
 af79cd13be357-87a36779e54mr1714645985a.5.1759781104330; Mon, 06 Oct 2025
 13:05:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com> <20250924-knp-cam-v1-2-b72d6deea054@oss.qualcomm.com>
In-Reply-To: <20250924-knp-cam-v1-2-b72d6deea054@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 22:04:53 +0200
X-Gm-Features: AS18NWBIGvGcnNKBag4b27Z_4By6kHKqpoHvsZREdDDpJpvbwz1h4h67ThPGt84
Message-ID: <CAFEp6-1o11B9o3HjdJY-xQhDXquOTknXo0JeW=HfpTxXcEaK3g@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: media: camss: Add qcom,kaanapali-camss binding
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bryan O'Donoghue" <bod@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: H_ce0VGL144lonpiioSGZAaDzknp2RIZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMyBTYWx0ZWRfX2v9OH17R3/iC
 SwYL0Bb62arumenn9nX9xGErNfPc6mdAnJLPjo7Zh/6IdCzxMMontzokwPvP+b3/UO8Stp9Wxin
 sM3rOauTxoKy7hH4fvzmbj+rQmxy2LeErbS3v0btCIJ65gaE61WOCB6+Fy4WU6CDaFq99hhv2zo
 tKOidueTpvSclcbFIz0kWxODgYWBobR5d7cUiKZh7cAahhj2u5/FDcLPFX8GJiGjXYNNxPrzfUe
 UPqJECSgMkIVXWFgrn6bFqCaiecWtNwqXuFn+g04MVT4qp++JVIuBb0yKzcI8LpXoH316ziFwya
 4FTWJt8CTZgmu3PAg/msGG2i11Auvls3QrDgZ2opJuXWW/tQCPgPwwWVpJDgfh0Kv2q/DFW1z4k
 ya9XVNWVS6TOY9hZG9w1NsY9yhCTZg==
X-Authority-Analysis: v=2.4 cv=CbIFJbrl c=1 sm=1 tr=0 ts=68e420f1 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=AMVQ22f2qhwqeWk0KgQA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: H_ce0VGL144lonpiioSGZAaDzknp2RIZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040023

Hi folks,

On Thu, Sep 25, 2025 at 2:03=E2=80=AFAM Jingyi Wang
<jingyi.wang@oss.qualcomm.com> wrote:
>
> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>
> Add bindings for qcom,kaanapali-camss in order to support the camera
> subsystem for Kaanapali.
>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  .../bindings/media/qcom,kaanapali-camss.yaml       | 494 +++++++++++++++=
++++++
>  1 file changed, 494 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/media/qcom,kaanapali-camss=
.yaml b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
> new file mode 100644
> index 000000000000..ed0fe6774700
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
> @@ -0,0 +1,494 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,kaanapali-camss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Kaanapali Camera Subsystem (CAMSS)
> +
> +maintainers:
> +  - Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> +
> +description:
> +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
> +
> +properties:
> +  compatible:
> +    const: qcom,kaanapali-camss
> +
> +  reg:
> +    maxItems: 16
> +
> +  reg-names:
> +    items:
> +      - const: csid0
> +      - const: csid1
> +      - const: csid2
> +      - const: csid_lite0
> +      - const: csid_lite1
> +      - const: csiphy0
> +      - const: csiphy1
> +      - const: csiphy2
> +      - const: csiphy3
> +      - const: csiphy4
> +      - const: csiphy5
> +      - const: vfe0
> +      - const: vfe1
> +      - const: vfe2
> +      - const: vfe_lite0
> +      - const: vfe_lite1

Wouldn't it make sense to simplify this and have different camss nodes
for the 'main' and 'lite' paths?

[...]

