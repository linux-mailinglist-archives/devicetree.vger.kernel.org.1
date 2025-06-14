Return-Path: <devicetree+bounces-185947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCA7AD9F06
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 20:33:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BAAD175266
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 18:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AE342E62A7;
	Sat, 14 Jun 2025 18:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bqo/SoUs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155B81DDA0C
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749926015; cv=none; b=G8pyOcB+nJca08dG50jfz+N2kVn2HXHhoIvIxrpkYOTcVW16JpMWZjPqeFHC950dsuTOjvC0Ciawr9mIbnhLRuQOjgtIrEngFmwSi/uJd9AWsy11+LU/0FSFwKVrY0myElL/t9xDij3+Qtk8lke5LmAQ69S9QkmOkCXmT60krKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749926015; c=relaxed/simple;
	bh=wcKKiiDIo+/kDlB11ct8+jiLlrxLrZ/6H5sTWEC2GkI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dWIxJ6qc88b5Ado6YlviHRvpGVSVffD6FLhRIaqEqjuVGrxyT3Tco22jGnoyExteIo+7X8ZMrjm6Y004PlZo7fMIF63hUxktNhSRzWQb+Rnnnasg9DHgYzOs6PwwiVaXSSXs792ELLQn7lIKf5aMgOrD9fmXtjFJHPFZq7rHZVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bqo/SoUs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EBJXQm005700
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:33:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/EROXfotcQS3z6Op4w/xu5h9Lj/9QhcJZ9gpHwfbqmE=; b=Bqo/SoUsDnbPkIWj
	msBtdYSTpXEn3j9+qPij8RXCp+xcjRIcQwUQgQhUEHkYwfl20si/fqLS0odQnsY9
	Mgj3Fr631qR9kHRQ/pYemFSYIK6TVkxKsE5TmGg7TWtd/PufX6dvujY3VWIP0RaW
	KHenQwJ5b7UZyGrsrlJ/zSFmYaYIYzSm850HyR47eL0qdZsnwVt+Cpowv7HybWdl
	SYbWvpvD06gHjOmYbBuECwGgtX2ZAibNwfJCcGFbDOyTIU69KilTwiwEin0K8u5E
	x1Ph0I5rdBoVUpHU804V9+Vnw0OYDWUhpQTid/ED9JvRgHvh9OujMSYyCjN3/SvO
	sw+YYA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791crgvd8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:33:31 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d094e04aa4so91814485a.1
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 11:33:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749926011; x=1750530811;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/EROXfotcQS3z6Op4w/xu5h9Lj/9QhcJZ9gpHwfbqmE=;
        b=aY+ERY/kH3Q3LOMkQAoDfoWRYlLrn9fUlu05oopmmexvKAz8ceR1JBhqGEQQrajUkQ
         ZxgKaf0CqhxTHOcxzHx8aVFmHfU6Rrs3gKN+0dHrhZ0po8DNeC7WdgqNlqUdQjn2hIBh
         B4ewEv0MXmlhczfrkivL3dapi/1k34TaVBIreuKdRuC4gn00YOy74bYxsKxFfQLB9icS
         A6EVC5kjhIfcXa0GiocdhjtiTJclIBQUseJAmI6VJD57wUorvJdo1DDWpOArz1aCT4QD
         is6kT+ejnGmOBbUEMBJmHDKAgqj5BmA3xEqfFydBjcdHwYtVxu7HgJ6/BMlPfTBHlzqq
         Bifg==
X-Forwarded-Encrypted: i=1; AJvYcCWxEFPt+C8eM3mMDC9jEqZ1S5l5xB+uFphE1+DxjSu1IxI91WFyHMd4jgKBXgol1KXtuQMwUoRJj6Ov@vger.kernel.org
X-Gm-Message-State: AOJu0YzDgmY8CGGr2M4o56cjFWnr9S/QPEy2VWZ2EvNUe1wgf9D1cRlx
	Bv7MZ1kn+HSs/nmfB93cKZJk8CZTjPLiUi9FrtcgpFW3OH0uoFMAMXJtIs92iagOC+5T8ZuHiYW
	a4ZgpLXVCAUnr9OJBoYbVjDOEpQNzffRGNJ5rg+a0gZqjIgsiIl9hUDR3W4hY8H4C
X-Gm-Gg: ASbGncvSDRSQ5l1PKxRPxFomVwf77IfWyKsun0NWCVOTleXP88vaftGz7DDm1Qyjyfr
	IKIEYzXVUt8gUp3Mm+e4ro+k1eoiZWDdba0+4mmhaJyjNLoP6vpHM/RE/ZRbGfxwASbGyxAh8sn
	27OyBiyx5jU42+UglkfkuBA6Hf7KJkhcBdK4LNZ7cWJnr+W8jXUQPw2xT8VW83hPoAVZ85thtcn
	B6FMMIqMaxWGCoeIGsRKtaUeUr+k4e793yF+oi/9Udp4GeXp6QGOey7yyCjEo9avBU+C0Dt7Mt5
	uA/+gldNMcpre34Wf172KcwFkRQIRpcTYP6uBwb0vXqzR9npJ4tVh3VWb5fJ7fYrvqJikB7wpph
	Ke9g=
X-Received: by 2002:a05:622a:118a:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4a73c57f8c6mr23641671cf.8.1749926011139;
        Sat, 14 Jun 2025 11:33:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5fSi9d9kAxuqrCjFUVKnWBGJCsy0WRD0sHgTYjunPnnUJGatx/nKYgEs9XUhs3Viaioi94g==
X-Received: by 2002:a05:622a:118a:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4a73c57f8c6mr23641451cf.8.1749926010681;
        Sat, 14 Jun 2025 11:33:30 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-608b4a91dabsm3146308a12.53.2025.06.14.11.33.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 11:33:29 -0700 (PDT)
Message-ID: <7b024732-6ae7-40f7-b0fe-02a9bf090e1f@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 20:33:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] ARM: dts: qcom: msm8960: disable gsbi1 and gsbi5
 nodes in msm8960 dtsi
To: Antony Kurniawan Soemardi <linux@smankusors.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>
References: <20250614-msm8960-sdcard-v1-0-ccce629428b6@smankusors.com>
 <20250614-msm8960-sdcard-v1-3-ccce629428b6@smankusors.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250614-msm8960-sdcard-v1-3-ccce629428b6@smankusors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: JN-wJKzM85XrzGYIm3ZjFZtDwhqnAQHZ
X-Authority-Analysis: v=2.4 cv=BoedwZX5 c=1 sm=1 tr=0 ts=684dc07b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=wxLWbCv9AAAA:8 a=C-WE-IFwnVoy-LijzQUA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-GUID: JN-wJKzM85XrzGYIm3ZjFZtDwhqnAQHZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE1NSBTYWx0ZWRfX7FutAk6VI9ry
 98vKUjygWeNUJmRThwELD0jY4FiVqHSMff3hpoTrEiI3UxhgKD0GAtkLB9oabuNZHlPpT/oeVU7
 9HXW2t8zwlgXLWy+H36f5L0wjZyLu9cqPKMrg+c479oQ4h92gxzWEEXUzdxHCHpR4/lDLOHOUzk
 FI7p/EqIS0TJbFwa20LHLmxEjfcjrPpdLuyiMG7U45xb5YiwSZ+eBUTFyxdFb/Lla+03YGZG3+d
 GhFJy5aclQFrR8Y2Juk6GM9G7nou5rUKDbti5tau2Kpx3kkSOJaut3XHkXm7viipIVC5dJD3DQ0
 wUfXt83bYTqeMsW+CYNPaIpGdqYITuiLosNyTGVK6h7EIfKk9KLGy6H6GW/IMZy5pE4X1k816qB
 RKsIert+yBUgcsRO0ubcIUdskQZJV5R48CMBJ/QOxX9PcynTzxXImPPjoVDvgI1M/4PEvygo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506140155

On 6/13/25 7:50 PM, Antony Kurniawan Soemardi wrote:
> Not all devices use gsbi1 and gsbi5, so these nodes should be disabled
> in the SoC dtsi, following the existing pattern used for gsbi3. The
> upstream samsung-expressatt and msm8960-cdp devices already have status
> "okay" for these nodes, so this change should not break existing
> functionality.
> 
> This eliminates the following error messages when gsbi nodes are not
> configured in the board's device tree:
> [    1.109723] gsbi 16000000.gsbi: missing mode configuration
> [    1.109797] gsbi 16000000.gsbi: probe with driver gsbi failed with error -22
> 
> (Note: Xperia SP doesn't use gsbi5)
> 
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> index 66071ad498e49c4f54ba105fa94640575fe08da6..84d4d1bffa9f73b5e395e4290b8dc856e0966e9b 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> @@ -321,6 +321,7 @@ gsbi5: gsbi@16400000 {
>  			ranges;
>  
>  			syscon-tcsr = <&tcsr>;
> +			status = "disabled";
>  
>  			gsbi5_serial: serial@16440000 {
>  				compatible = "qcom,msm-uartdm-v1.3", "qcom,msm-uartdm";
> @@ -440,6 +441,7 @@ gsbi1: gsbi@16000000 {
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> +			status = "disabled";

I know I'm picking on style a whole lot, but please keep a newline
before 'status

Konrad

