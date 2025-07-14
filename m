Return-Path: <devicetree+bounces-196260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 806D8B04B9A
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 01:09:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6273E1665D2
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 23:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EC83279DB3;
	Mon, 14 Jul 2025 23:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jURD0LZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F48027A455
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 23:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752534144; cv=none; b=pLt2M1LHH797KsMwj+yMni/KG7z9MiLxpKPeoT45rxk5g7CD1IH9uL1lB2QwE0L+sj8E4rLGp/vzVwQYNsn/wWs4kmFdIyUAMYYzanziXdTJjT3ooMgSgFm2bZfjydnKGVjKuKuIbWsDaWO9BVsvP5LKrDyQJtVNx8JCxzH3/xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752534144; c=relaxed/simple;
	bh=E34GzRFYdfrySXlFcB0d8ojEarEs4qpWI5cY2qlxFag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UFXgWe60CZC6e/t/HVxZQkkZXbJ1T+YLp7m6ld1uhBwfEB1u+tjbkx0UbEGEhkVx5aOn1mv+3ifd/to7g5EmgvPM8mnO9cq2VBYyaqTKgnnBGVb77zuNw5aLlRGjLV2ifj5rij5RSpsx6H6aHEhZrkwHY2yEQ+QpeQvUr4YakM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jURD0LZm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EGSBfE021180
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 23:02:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=G8XaE9jpkoyoM7NQruVh04oW
	JMDICv2TJP6E53Rgkkc=; b=jURD0LZmOZmkPi8PD/Vr0Z/omyQW06nyZbZ7xAuT
	bcMOLxBKkUg0rHbr1fw0jUjJ55ASZqUFf/rTLSxWXO46krDM5H6jJhkWA+/Bf+9Q
	z/5NJH7vYXrbHY9oLZQ7QnSbOMBvjfhK3yFkuOy4NPn6TZY+UhoO4CxjMMQFvhBK
	Jj4UP3CRs5yXoyepZwqaMLtOoq6c9hlvv4yMmPZYNr4ehEM20VX11awC6EB0hJV+
	i/mcBTMK9SkHi0K4NfNL1aEv3DVoNjWQkLeZP0O7CfySnlp93nW8BrFRspd7Nb+J
	a5OI52kKZV+GPVluNkxB6HJoaqRAZ6ZuEL0KvDlNXIYDvA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dw0vs0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 23:02:21 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d446ce0548so745745185a.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 16:02:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752534140; x=1753138940;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G8XaE9jpkoyoM7NQruVh04oWJMDICv2TJP6E53Rgkkc=;
        b=Ax9JcR6DdXPGmoCUtT2Ljw/2vq+UZP3f5/XuWlXRHpJUcF5deFmvyvC2xomFi0K6S/
         6pmQwdYqMHOIR8CQAy+xYKhgrn8cINBEnB2Boxlyn0LbCHPZxgPeXjDJX8krdl3nplUl
         oMvBhwXrMZdSUYd+5zojDIxfbLINLZtWA+fCO82clmd4tcS7Zaxdcw9xpMVWVAJL9vyq
         cdW85ucQ87KKx1TtRSdB+y2Ya/VBIxY/W2vJSQN/Ry/xraoebQUnTCqJ8FNb2YD2RRHi
         72b7z5S1bK2rLjJoVRyP84bTunT6F9f8dY8dfDU3JStuw8c+0KZkvPrHeW6kW2CDWT0f
         A6Ew==
X-Forwarded-Encrypted: i=1; AJvYcCXDDPrwQ38KUOmIP02RtOtkEHimL/ogERulanJ0jKs1Jwm88OGBhPkS7TI7/4xNzh9riz5QbhiyJsbM@vger.kernel.org
X-Gm-Message-State: AOJu0YyF0GBqWVZ7TIwdKdEzSRMUW6dbmnRCPXb4VsleXyqEFQRObZW1
	w2Aqc8ZcfZiRh4qzj4pdvkLIwxSe5BjMUy+OswLnQG2ZYhbDnAw57BSQrxHBPb1zt37mjF8YWua
	5ZizEC95xwzjW1zrsD+5pzqGGA5ttLpslkVtHn2LTOIqkoY5jXvoenl6PeBEbkTzN
X-Gm-Gg: ASbGncvn9fNTarfXDqvkCH7i3LXtDtWpJ+ot8k+ZgBIFoke0eydjx0HBjiCPEwrK0Ne
	vdtqcefXGINP1zcnjgprXqgQxQ3kA9z3juQRUKZZbUZeayi7YR8ML++LVVQ7iBb8w7NPGiMW+TR
	QVuipEzdMAP+s50x5xZT3h6bbNqkCUDJvy9w/iiAzz+8NtcIsj7X81sb7ihkqFhb6eHJVLc8o/s
	cFQFsrh3W/xueVL+4rwuM91zrsV/C8Ilg8clOeipA7Wn5bXSfd9wOVybRNT1KJEJMA0a7xodtQf
	YcOIX19c50dznfcICLo3je6QIqG8b8E4oqtmi/RcKVYqQS+ZhIy0OF5m2YenfT8x5EYJj5Maxu6
	rHs/wdwEWYLf222vEYB2QJErXMqpOHoH/7TAGyns9wEc5Tctt0wKp
X-Received: by 2002:a05:620a:2596:b0:7e3:2b48:7a7c with SMTP id af79cd13be357-7e32b487bd8mr670144285a.52.1752534140427;
        Mon, 14 Jul 2025 16:02:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3ziKVVI+W7Cfl6FloUK6LI/quaVkueJIXuqq0hcOx+aVeCIPgw/S2bBDlnuQBJfSyxua3Yg==
X-Received: by 2002:a05:620a:2596:b0:7e3:2b48:7a7c with SMTP id af79cd13be357-7e32b487bd8mr670138985a.52.1752534139909;
        Mon, 14 Jul 2025 16:02:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b63403sm2094597e87.164.2025.07.14.16.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 16:02:17 -0700 (PDT)
Date: Tue, 15 Jul 2025 02:02:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Cc: bryan.odonoghue@linaro.org, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, krzk+dt@kernel.org, konradybcio@kernel.org,
        mchehab@kernel.org, robh@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, amit.kucheria@oss.qualcomm.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/7] media: dt-bindings: venus: Add qcm2290 dt schema
Message-ID: <zk5cmielm4urfm22yszmjmwvi4mqvdsfthlonq6mij7rkijcsp@7evb3ejxuaj7>
References: <20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com>
 <20250708180530.1384330-2-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250708180530.1384330-2-jorge.ramirez@oss.qualcomm.com>
X-Proofpoint-GUID: 5GiR-dmbpv4S_zFgvh2eM8-VMLXIb5g6
X-Proofpoint-ORIG-GUID: 5GiR-dmbpv4S_zFgvh2eM8-VMLXIb5g6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDE2MiBTYWx0ZWRfX507RiamsvBlp
 +z3vf0af9b8pqsHuBvEp12mKxJx3URBhMfFZINtVXBPsJFR937Sx0BtfwjhPBPImix9Jxy7KFVd
 qAzOs3H8/YK6NQFSsjDTIFf6MaM3fa98Z+HKPi1Dz/ZJ0UoyBtPW/mvKXLZhQVUH8f9ZmLjzXAX
 S24C71dgAPL7At/d6WBpnA5e8bEQwjRhR6JOFJAPMOf9wdJwNHqhiqT/syG/EoZsf+QQMcpRUuI
 0K0DxfdCwhHnowmQtgd/lMEUbjshghPv4QMC3A2tOGvTFPdt+furbHzHtbbHB3IvWapwgl7v5JB
 8qLqNzqUpVPyoeASMCzSuAS84msUEcnCW9bFcrFkbqfdugFFAn3injd4zYo17oPB22hD9OynSvI
 OeO+XInkIpkmxxvT5wxiRTISaDwXS9MZIwI1V5NG3klaaeR9rbIft+3J2HOB9Y/J25Qx3AAs
X-Authority-Analysis: v=2.4 cv=CJQqXQrD c=1 sm=1 tr=0 ts=68758c7d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=COk6AnOGAAAA:8 a=mvPirLwls0hmURuAnzUA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0
 clxscore=1015 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140162

On Tue, Jul 08, 2025 at 08:05:24PM +0200, Jorge Ramirez-Ortiz wrote:
> Add a schema for the venus video encoder/decoder on the qcm2290.
> 
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/media/qcom,qcm2290-venus.yaml    | 127 ++++++++++++++++++
>  1 file changed, 127 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> new file mode 100644
> index 000000000000..0371f8dd91a3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/qcom,qcm2290-venus.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/qcom,qcm2290-venus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QCM2290 Venus video encode and decode accelerators
> +
> +maintainers:
> +  - Vikash Garodia <quic_vgarodia@quicinc.com>
> +
> +description:
> +  The Venus AR50_LITE IP is a video encode and decode accelerator present
> +  on Qualcomm platforms
> +
> +allOf:
> +  - $ref: qcom,venus-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: qcom,qcm2290-venus
> +
> +  power-domains:
> +    maxItems: 3
> +
> +  power-domain-names:
> +    items:
> +      - const: venus
> +      - const: vcodec0
> +      - const: cx
> +
> +  clocks:
> +    maxItems: 6
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: iface
> +      - const: bus
> +      - const: throttle
> +      - const: vcodec0_core
> +      - const: vcodec0_bus
> +
> +  iommus:
> +    minItems: 1
> +    maxItems: 5

The hardware can't have between 1 and 5 IOMMUs. Please describe what we
have.

> +
> +  interconnects:
> +    maxItems: 2
> +
> +  interconnect-names:
> +    items:
> +      - const: video-mem
> +      - const: cpu-cfg
> +
> +  operating-points-v2: true
> +  opp-table:
> +    type: object
> +
> +required:
> +  - compatible
> +  - power-domain-names
> +  - iommus
> +
> +unevaluatedProperties: false
> +

-- 
With best wishes
Dmitry

