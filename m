Return-Path: <devicetree+bounces-125744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DB09DF1A9
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 16:24:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 70C96B216A8
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 15:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF951A01DD;
	Sat, 30 Nov 2024 15:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="May7g7uJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4E719F13B
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732980235; cv=none; b=HYV1n/XNHxhqowdoSyEaW3+gRohysvddxCoU3SMDxm0j1pFH+O9BLIUO6Dk8IixiANCFFD5QyIBNy581K3N+BipgYmGCg5MdCx8ydR9sI3KwgWP2A6VRKy4O86ak6IS9jvMY+qkR8hDEfE0Ceg5ObIXvPkPkp6Q2jdtbg89vDeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732980235; c=relaxed/simple;
	bh=1JwAP/DY0HuGX8Ns1/kV/YEVAJX6VPdtZ9g52TJPUg0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P1yp+a+j+5208cPOAH+msfZmLTC9UT9Vxg1VYGABQlk5FTDpG87tnG0WKaNzjDkJGOoe3jg1TJvRDf0fohmKCiVLxp0rPb4JVa/PisV9ZWjoK08ycLCizh80RY99nk5JIfG2+VMBTVYTDVEZVtoZcQneY2TMVlalEDh4YuCmRos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=May7g7uJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AU6UZGj009497
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 15:23:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	037rDtr++WF9xhkbVafxJsPvXwUinKUzUyY36hB/xW8=; b=May7g7uJUtlaFy2l
	Ka3dgiCYMnXv3RQtyX9D14TIUyybJnTQdHayHlDpLcFECnAc1eNCTssz5myKnoO1
	/9Ge1o12CALsPqo4O5Oodvf86zRsDKjlAZq7xAm9M2gzA/7/GXZRK2Hr4rM5JUMt
	GxKjjR5aH4yqbNMdHPowZBRs+APdgKZ1w2qcm6DGvdLWEGqwS704Xwubffi4lwWJ
	yWCuv3S26O8olc9zR/wA2QFo9OeMB7X36/pL/+XnLaNA9Q2105m+aykck6u6qpID
	AvgC2/QFNjRHC4w/KLKn2WtPQAEKuzqSlChYpnTipPFbLViesby0s+ggLvgK7tKH
	VIEsKQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437uvjrtgb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 15:23:52 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8878bbe9aso5289566d6.1
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 07:23:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732980231; x=1733585031;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=037rDtr++WF9xhkbVafxJsPvXwUinKUzUyY36hB/xW8=;
        b=FI8dZVCYwJ+5q46K3UxoCgfu+Fn9PfNImJPy0qF/t9XO23Co2eIG4tz3Z1mAPq6VZF
         h5OUUSMN1isNXpeReofGa8VxPN6BwvUqo85rhOW+NeC/HnTJzn8hrGgY0HhtYpUoMZuf
         LHRoFCD1/p4Yq0TFq5TXRAxjvp6A5+9qZFCRlskaYFHmsY/kWxzx0t12PLlHAAAFG/Z4
         KWpqW5TB1p+JWV66A1fiJCpwq60ygD70p85d7tcVjk5PifdO3h/6p8iZYm+5Ham/75Ni
         tWtYpmwhu2LmWYSYBZIAn+voVfNzwChZGGTH7mjURB/TTY9n8Qo8GbPUa4qKO+LFWzRL
         C+oA==
X-Forwarded-Encrypted: i=1; AJvYcCXMUj2mE+plO4zDDn+kegd9aXP6Y3XZMwsYce/8/PlaeYAJ2tVrQRMvyK3mRVJpOlMSTeRzW/hAnjMq@vger.kernel.org
X-Gm-Message-State: AOJu0YzPwj6c3SHQ08GTPZtfktY725/zkRL+tj/QWOoxfP9jOt1DOZ+2
	ZWspW0sxbS05STYi5aYjOqVOXGDeXcL0Jz8orMQ+O8HHK9Y8wUc/cHPZxX5uy+QQnS/+v75wmEP
	/5qAzw95MQH43bMPRk+/cpc4el4BhxmMlMCaXV+4gwjTt3PgGnI+azUDuJdK3
X-Gm-Gg: ASbGncvEEzI6ZXq1Vin4yUxHT1K8sIuwXmMFBdWRIcpNkQ58D+aH70m1n78q/6R83Db
	NvO0nq4T5jMfQXlKAy9zaAyWWVGDRTi4Wz1NeNUgiT0z1HDiHRJ8p8P7288dn4MjTtrGhsfZa6P
	deCuZ/Ir50QnEZPUNA7Lq+Z5qLuHWllcvkDu6m7W/taMzGVQ7sF3ebMQLft/9smnZ5ouf29jXTP
	3tHz1Cdy8Fl+qOlM41rrzmN4dWpruxk0qqqoFuQWMrsbTgKNbtsQGjW5vaMjHh8+iv9gQ7uSljN
	Gdu3xmcMqdoArZvCneSO+h1yysGXqLg=
X-Received: by 2002:a05:620a:1915:b0:7b3:577b:6da8 with SMTP id af79cd13be357-7b67c2d1483mr899580485a.4.1732980231459;
        Sat, 30 Nov 2024 07:23:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGOtBc+pt0MjB68ivLwzYOUuJ8boKc8KNsv4m3RWKwf3pIlcjxxa8ff8a+52/R/8drqQ6A3Pw==
X-Received: by 2002:a05:620a:1915:b0:7b3:577b:6da8 with SMTP id af79cd13be357-7b67c2d1483mr899579285a.4.1732980231126;
        Sat, 30 Nov 2024 07:23:51 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5997d40f4sm293422066b.65.2024.11.30.07.23.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 07:23:50 -0800 (PST)
Message-ID: <2304eb69-c3f9-4946-85b6-183fedaf2f7c@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 16:23:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e78100-t14s: Enable support for
 both Type-A USB ports
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241105-x1e80100-qcp-t14-enable-usb-type-a-ports-v1-0-b4386def91d8@linaro.org>
 <20241105-x1e80100-qcp-t14-enable-usb-type-a-ports-v1-1-b4386def91d8@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241105-x1e80100-qcp-t14-enable-usb-type-a-ports-v1-1-b4386def91d8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: L7W9PwsxTgAs-X7iUergiipeBAypZRwO
X-Proofpoint-ORIG-GUID: L7W9PwsxTgAs-X7iUergiipeBAypZRwO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=602 impostorscore=0 adultscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300128

On 5.11.2024 12:37 PM, Abel Vesa wrote:
> The Thinkpad T14s has 2 USB-A ports, both connected to the USB
> multiport controller, each one via a separate NXP PTN3222 eUSB2-to-USB2
> redriver to the eUSB2 PHY for High-Speed support, with a dedicated QMP
> PHY for SuperSpeed support.
> 
> Describe each redriver and then enable each pair of PHYs and the
> USB controller itself, in order to enable support for the 2 USB-A ports.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

> +
> +&usb_mp {
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy0 {
> +	vdd-supply = <&vreg_l2e_0p8>;
> +	vdda12-supply = <&vreg_l3e_1p2>;

> +
> +	phys = <&eusb6_repeater>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy0 {
> +	vdda-phy-supply = <&vreg_l3e_1p2>;
> +	vdda-pll-supply = <&vreg_l3c_0p8>;
> +
> +	status = "okay";
> +};

Please sort these alphabetically

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

