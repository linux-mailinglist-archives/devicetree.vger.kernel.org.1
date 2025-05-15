Return-Path: <devicetree+bounces-177714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A789AAB8AF7
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:40:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F308F1709A0
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 076F821771C;
	Thu, 15 May 2025 15:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E99OL5Kk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A301F8753
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323529; cv=none; b=YIo8wYrcg9rROcY8IDKfjPKi0RGg/uwgQMGyoWfpNeOrLRBdzXCvXmipRoOq9qhkeQboVf7L9wmYX4vJOreMds/q1dVxY1lM5hRvQt7I/ZIWRkglL7PEz4UqtFPB03bp4F7kSK6o0SXFLzKA78oHEt18BV8OguQG+UgyPgayx0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323529; c=relaxed/simple;
	bh=YhjkVdXvtRWQPDDaVu+qCIt2CPoR+SqpafwJoDvxh2Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eMGnNKvw60QGRTXeaKu25T7Ej3pVEJLBJzCsjtuzTLWw82wp0OFSPpuoRqCDyX5FGP//PTF83lYaP+WE8ud2PQ0ZmDa3+GOtfyBvjk/AxKyJdqXeCkX9e8Mtl34tZkYDw7P0SLZnsJa3IfOBiypAd9nbfDxpCgIoHR5/EtTnLDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E99OL5Kk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFISc021039
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:38:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3pdbEuEDP4tcdmm5ZtqXD3QPjEEiKtDhYgXWKQaq6K4=; b=E99OL5KkvoXjEGVA
	dQVWygwR+q35M6qlbHilW5smNXW7p04WezGoOETsCn2zMLv7f80AK2uiUIydRNdo
	E46/DCW1LYSBpX1WH3EOcBTYoFjyiovgv8Sl19I8PQEwf20Zk9GRPYXzWxzsI3Zz
	6pehrAv9RdORg5Y/bHGRi6LlVUSIkdOsF1Z3TCpUJq3LGgUz1BGlSV3NmyOtsJOw
	YCi9B7NB+k0gvJuvXQ6v/qwiPwcDVNTVhYEUOrGAcC0d0eHXKTnE5b9Y3sYtRxiW
	+6qrtH3b61sn9tqgcKCczwbpM/qTEXVAFWwnUQWmOHC3bSmDffCv87oebIPlKwy0
	W7iVXg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbew6k3m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:38:46 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c76062c513so24838285a.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:38:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323526; x=1747928326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3pdbEuEDP4tcdmm5ZtqXD3QPjEEiKtDhYgXWKQaq6K4=;
        b=cb8wbMaTF3q06XG40WhQFQTNF4+ZCyygNuH2oXOv1yznp4asjPrcsIc5iBZwYT9M6+
         wYHufUB90diiyY5dM0xWEBOb1duV/Ia7MFaHmM7AlpEU9xDfgmCZCjl10us23lfI54gd
         4nfcS13H/IycePZU6s0Ydpdss1GIXBM/CPC1p+4f2UwjTMb/x5MwKu6/WioEMpZPEc4y
         phLDfyByekn7fFax8JCzeNw8N92lfDeTQzyrVv52iOG+Cxv0VGmaEVUrRsDkWrGGr5n1
         S8NPEyDn9BNf8U4l+eSDvU0M1f6K6WmzJXaD6WzmHEmKAqF+4TjAvaPX74NJhJ4QQuYD
         DLhg==
X-Forwarded-Encrypted: i=1; AJvYcCVdu7VMV7S5gq24qAYmHJ/D5fZ/O4Oqi8M9Gnh425JzixOJ87W2yiCykb9cSo2eTRtmln3SRTBL96us@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn7MfZAnhMwNu+JQv9WeSmAJxnRubn6WQYYL8R2Vfibgg6F5R+
	jKDYH3pvpX1Gn3CTHf6SvhdeJhCq2F/WfH6AWAthT5Oe1jmWzGhmFDfXbpbSg03H6P1j4D32udI
	CU1xByHMwWezhDGqlbQOakMUUE5ANcxzH5uklfHg4HjL9+ABMwUeNSqFHzQ006tOU
X-Gm-Gg: ASbGnctlTQ3o02psa9c420FqNqzkwHm4aTE8cxoh6JpLC80du/LIGc3yl0LbgDKN3bx
	TYWI6wzn2olQ3I0L8lso1LjZusXwMEWdlwZCWJVIOPOSQfsl9W5CN/2SJ/t0B3BSBf7tkycx7N+
	QapZN5Q4TIOQ7Ybk4AlDw8KsM7ttHwl8uLPgtjUefTN3DUiEktIlWXtybWdxnkq3o+ww6k96fGx
	GW022P7wk3SFuBV2vN43nFODzrqMHPI/seXRQE728SV+oULp1Q2iCAixVHxdY8RoAlPkaHxMN8g
	vn3Pi/QMFOVDEV2eP211rkbTSm49tDG1lx+homGyqp5LhSg97s+WanAt8gsPmIq1qg==
X-Received: by 2002:a05:6214:2345:b0:6f5:4259:297c with SMTP id 6a1803df08f44-6f8b08cefecmr936836d6.7.1747323526134;
        Thu, 15 May 2025 08:38:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHv3PeSvVVZHsqNQh1a6BwEeriW62crZna4w75F08uWKfsdhOTODl+xgVRMR+9uF6E3AiEoA==
X-Received: by 2002:a05:6214:2345:b0:6f5:4259:297c with SMTP id 6a1803df08f44-6f8b08cefecmr936596d6.7.1747323525704;
        Thu, 15 May 2025 08:38:45 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6005ae3b824sm2851a12.79.2025.05.15.08.38.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:38:44 -0700 (PDT)
Message-ID: <51947214-47b7-496c-ac26-8185bcda2312@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:38:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/18] clk: qcom: videocc-sm8550: Move PLL & clk
 configuration to really probe
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-8-571c63297d01@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-8-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: r-u_F_33bWmqIV0RbUBOHR8Ld5phThtl
X-Proofpoint-ORIG-GUID: r-u_F_33bWmqIV0RbUBOHR8Ld5phThtl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NSBTYWx0ZWRfX/3cLDqskkxeu
 tcQRIYWnxt5ya0vOT96aBagtCiRH8sg4GTnLKKUIY9G5Hwcloez1kh5lD7vqWlBjkB7n+VU4ZXE
 vWfZnpw1YAwTRJ2kXP/8uH1DEXJv2lRreMjpg4REFivwuhdxBocQH9CqmW4uTy0sW9EPmrS34kq
 J5OfQFYuDnzEKl4VyVpWEpssu6/C2wtPaPh1jkQG4/MaO5SEgn5mleJJEvxLCLYYwDWXt0OIc5f
 TwcMV81Cc7mXKMVFPaHQknDVbWQf9hSQ4dTBDmFCNd+QvJw05pnJwU4CrZ2FLiZfWHGxbmiwatP
 MOLK4TippUzhkDlIRYD+3scMwAK3I4xr+vheWJ9gsdkPXpuWz5sAAodMS5PjoyckdVCS/3VxZzf
 s7JY0Nf/eodVIKcv2iu2l/M7JbzqoaAj5zzIS43lF6+NDmOAnLQ8N+N8wHbUVzROJp1jcJKM
X-Authority-Analysis: v=2.4 cv=LOFmQIW9 c=1 sm=1 tr=0 ts=68260a87 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=CXQnK64LRHhqnx0rWp8A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0 bulkscore=0
 clxscore=1015 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150155

On 5/14/25 9:08 PM, Jagadeesh Kona wrote:
> Video PLLs on SM8550/SM8650 require both MMCX and MXC rails to be kept ON
> to configure the PLLs properly. Hence move runtime power management, PLL
> configuration and enable critical clocks to qcom_cc_really_probe() which
> ensures all required power domains are in enabled state before configuring
> the PLLs or enabling the clocks.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---

[...]

> -
> -	pm_runtime_put(&pdev->dev);
> +		/* Sleep clock offset changed to 0x8150 on SM8650 */
> +		video_cc_sm8550_critical_cbcrs[2] = 0x8150;
> +	}

Because we tend to sort these by address, this index will likely break
the next time someone touches this

please introduce a separate array for 8650 instead

Konrad

