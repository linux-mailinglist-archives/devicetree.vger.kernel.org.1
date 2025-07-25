Return-Path: <devicetree+bounces-199672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8329AB11AAE
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 11:17:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50EA64E05A0
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 09:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CEB92C324D;
	Fri, 25 Jul 2025 09:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X5VQftU6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB41278E7C
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753435049; cv=none; b=vFtmH5+zUaVKvftvS6Q5+v4uY/Xq1lTvjByW9sdQ2ufuFfWwhus2gkdGkFVI3XIDxuCFICQS/JQmSGxrwxu2hgRxXM5P+GcrRFFTGWsyQXI7qA0hPlkUyIZN+e6NjR+q1D4hb5hawQf1aMf1I55Hf62IUGITQTtGKNG2eLjc5oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753435049; c=relaxed/simple;
	bh=bOBAINPbtYNFViCYV6WDeBjBQ5bXvQbgtV/iznpIBlg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fBC/ibcP3+Xe4q7zKQnt39dJwpQOWgTyXMxJjD/wHbp1TATpRbnqP2u8jzBYDpeRXxAF/ftScEp0ap85ThCbDLXUCdsXYt/lGDPnLoF+0LlBCWk2BzdcF/fhiLJrld6aEd7HLtL3GPNH4QGNhbTHmugGOpIAPS15SrDgUNJF/tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X5VQftU6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P97nBK012939
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:17:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2KMk/UMFV9pj90RnZdgAu+v7lUkWr8SQyyGYLajB+lk=; b=X5VQftU6nL/LgeEB
	oA3ZHJiilg2Cr0XlOhY7uQgCURzZfpw276dpG1LCUQbL7dpSn4v1T063GO7U9M+p
	UfUd4ZI2bsEPrdRn/DdPHScvSoF+5UFzuVr/pyXh6DmO5ww4qvgV+u3KlUQYE7BO
	bQxYlUoa2vizqLIxHqV4dbsS+RnXmiimGOsi74QCy2LKbZ9baAkfGz9sjXy7EN0J
	ICpY1EVYyRx046ZbwH+q6eLxFv5fonAZxqRauIX/nfjGhP/d5lZIsdcgbLZ3IXmq
	4M4Wa/MQ+Y12mOzSx+h088zG9yB6sRdADoZHWkLO7N2GvlzH4NbGRKMWEIZ0X0XM
	HfFswg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2t1gpg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 09:17:26 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4abdc49ce0dso4320091cf.2
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 02:17:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753435046; x=1754039846;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2KMk/UMFV9pj90RnZdgAu+v7lUkWr8SQyyGYLajB+lk=;
        b=srOrd5afXLT3AW1AhGNEDm5nKTCz4v1MMSVi2lG5gV17olVfTpoyvlHXV6f9E5EUb4
         VFOzGnE763epVYy0bE/yXx60AFt/8iflqiEw5PL2w/jrcdpoMjG6YvPRW5c40PUT3NHV
         Y3VXIye8JQ4ELpQsTSXejI23oM64Nf2hkyB6GZDcwvG7TygcHrAhW6dhP+9E7jQwc48I
         VBWzJbX3v5sSPljiOg+Xz7Ff6TBjzhjHhyaSTStE0svoq7SrPNK2B2gFuTxew3t7zoWc
         NWgj0hpqpk03RDNz3kAwSGtF2F2IO1ju1FjTe8VBuaRzgHXOfbCIrKBV24yzXRluwU7R
         f+1A==
X-Forwarded-Encrypted: i=1; AJvYcCXzWEUuwTtt5m9vE6lc5VMWGK/gGO/1oV4uBMPEmS2Z75hwsEB510zhKb37qmA39EjBHXeNfxASRwUz@vger.kernel.org
X-Gm-Message-State: AOJu0YxOV1JJS+7CNk1nUISZMQshyUynTf4okYJG2SUN7UlK4d4mOEjM
	vOcL0NV0OEHrShDWKrtBo93omLi8sqIlCboLPhT/Nmqe/1u5yGO/EGVeIABjS1v6CIsz9pa34TK
	lBhnqyXthQ9C1RI1NjsHGxP/OQ2OgcKM15nY6PWkPQs2rN5vuC2RxWA+HMVEqmPxh
X-Gm-Gg: ASbGncscaPnjiK3enTLjG7a8H03GhoxY4tr31HaYsXdnc2ZAAEkZxEUYkbf7ndZGGzi
	slcczHSc+9sK23/bBpn4itCd+/QjSasIpVAk7gz7Ya2CiiAa3yUzEmlO1WkaisZgCX51ZqI7up7
	2s8Xp881GTO7dm517sJYXaekpt1BGn5sEzz/ExD45ngUn2NB1RwTA7fF1NDv9i7MV2fzDk7G/kD
	XDk2YsU6B9C6n1QVCrwlc170wBVzpw4GXAmNsUwCPAH6YjlrvwWOIxiivt58OKY0GWuqf+i/1UD
	sum8yxXKnA9FTreazon5SxEKLdhLjIDNGtvnGyUimDjz2/0L7aiq4pqrPQr0CZfJqR97QiN7HvG
	s5GB5CTok/60E6WKI2g==
X-Received: by 2002:ac8:5e0a:0:b0:4ab:7daa:d84d with SMTP id d75a77b69052e-4ae8f05f1d6mr5130341cf.14.1753435045982;
        Fri, 25 Jul 2025 02:17:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHv5/tQIemrC+cdKCLUc8nfT6WzE6Q7lvlNrkKLdqn3e6ZiyHMyr+3x/nQjJZgEZbx5Og6OjQ==
X-Received: by 2002:ac8:5e0a:0:b0:4ab:7daa:d84d with SMTP id d75a77b69052e-4ae8f05f1d6mr5130201cf.14.1753435045492;
        Fri, 25 Jul 2025 02:17:25 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af47ff42c2fsm234902166b.131.2025.07.25.02.17.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 02:17:24 -0700 (PDT)
Message-ID: <452c6a6a-3d65-4712-a105-386d8540f2ff@oss.qualcomm.com>
Date: Fri, 25 Jul 2025 11:17:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs9075-evk: Add sound card
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250724155632.236675-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250724155632.236675-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250724155632.236675-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BMKzrEQG c=1 sm=1 tr=0 ts=68834ba6 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=RUmmF2Cuiqa3jFE6LK0A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: zRU03dhxHarNCYoM72e9XUFDAcZjqY8N
X-Proofpoint-GUID: zRU03dhxHarNCYoM72e9XUFDAcZjqY8N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA3OCBTYWx0ZWRfX5gvOHWIkE4tM
 Dt0bJb7iRIA4RsvvIx9x0jPbBNuMh3ISYJO45U7d6GP77v2eZ9lTuh9u/rpCsjjGQK8oMdzmvmU
 SSkR5N2O3ZHt4wsQdGXKQaHCTOL6w4kDZFvUn0Cpp9VM0R6Vqp4LblqYU0kb28+qvI634J0nSIn
 Pg5M/mLdTWYQQLUAwhuoc8CzHCBXVERaOt4Jj0eCnPLFLoyoHk4NKoG4CJ2vGIXIkNakBlUDudE
 b23iGi3u5XlitRHVOXOlrqgl95wNnLFf8c9OXehVuxiPfXaJTFqzxMfFQEul8KFdDKRt6yNLxda
 ASSR9ODTU5qKLLxno/VlxEwTfDWjrvkPKQaUxIfKZ5DgbtJ5+2XGI877IWp2CLoUZ4SlhBERD7J
 RiqiYk984VbQUUwg9DXzYw64cDuBoZrfMQIhauSFTgKQB3LuMMO1RZUMg0ZbhsnlKje0pgfi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 bulkscore=0 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0
 mlxlogscore=999 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250078

On 7/24/25 5:56 PM, Mohammad Rafi Shaik wrote:
> Add the sound card node with tested playback over max98357a
> I2S speakers amplifier and I2S mic.
> 
> Introduce HS (High-Speed) MI2S pin control support.
> The I2S max98357a speaker amplifier is connected via HS0 and I2S
> microphones utilize the HS2 interface.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---
>  .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 14 +++++
>  2 files changed, 66 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> index ba8a359d8fee..a2d9aaa641a1 100644
> --- a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> @@ -5,6 +5,7 @@
>  /dts-v1/;
>  
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/sound/qcom,q6afe.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
>  #include "qcs9075-som.dtsi"
> @@ -20,6 +21,57 @@ aliases {
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> +
> +	dmic: audio-codec-1 {
> +		compatible = "dmic-codec";
> +		#sound-dai-cells = <0>;
> +		num-channels = <1>;
> +	};
> +
> +	max98357a: audio-codec-0 {

It would make more sense if audio-codec-0 came before audio-codec-1

Konrad

