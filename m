Return-Path: <devicetree+bounces-190140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DB2AEABC2
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 02:27:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A0994E08A1
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 00:27:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A196DCA6F;
	Fri, 27 Jun 2025 00:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k0HnS/Ui"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC116208AD
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 00:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750984056; cv=none; b=WAS6PblaAemalykqRTCLINfzsEo3qN43ahhKEzoZ2KoEYW/PRv+Ue0IUUA6eCHevA2woJFJPXdws6rtC6xd9/EYprfDmFqc8J1CWQ4Nk+kaho7P/lDAb8NB0t2sr2vTZv3ysSSIgvlDZQ1S2A+Ob24k3YIyCFnwdnzeouyr5LjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750984056; c=relaxed/simple;
	bh=FLgR1RAVwQuARNNhUbrWo4jLrjd2p+X86Xi8nmksNs4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GQvpEZUqc6j4rph+yMiibQ7QaPwN6s/2oh6XG97J/GgtnO5IB7nwEYRb4Qj9W1Hwx7vSmJV0Bd3g4KNlN6EU0IaK1eWU6wJ08guykAvQ9SbZFrT5MJEfsWyUDvbpzdZZpOA9vC7I5sk5YYT7FbbXflSrieTJrcMb/A+0HTJ9svY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k0HnS/Ui; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QJTq2r015435
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 00:27:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1/yyQh66OFWOTcOVBQEZDbZWDtw0lJCwMvCv/hgMGZU=; b=k0HnS/UiKJbD5yzS
	M/5PnQKJJNXz892+Cqd1alpRMF7dpaRVesfActI/hxJ7d/XiLJCsbeHUbgl4gJyo
	zy8L3VmnwE3h5E14/63vS+ejWy1JavUUKIb5fndNV2cFzy0MwwBCtIa2KMXEd7+O
	K0+ahaLqgrW7h6QRC+K4cwqXUnjVztBynpSVrPqG6MR7HLIbyuh72dpldId37ee2
	+RfRPnB96QHDw+mUnMx08KEqdQhXEWXkWCzPc/cULhXs51jbA8tRTfV1alO/mMsA
	3a0X5muwZ0LAsBSyErQsRFdTjVrMZzAKpmfYNcwOoVMdU4t47yqGdXyoE0gs3m+W
	gt3Qgw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g88feq2a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 00:27:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a5911ed20cso1855811cf.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 17:27:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750984052; x=1751588852;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1/yyQh66OFWOTcOVBQEZDbZWDtw0lJCwMvCv/hgMGZU=;
        b=tOc8Bsn+qTE3YdZGElkTMJM6pK+XnwibI6MoXq9QAFUrvK6lFD1BGi1sWanUEAAroF
         n4/0ic9JTKADSJcqbdRS7PYfTF8YrT6Q62pPUu/2fRmg56mGd6tvNO1lvLqLJnjD7mo4
         8/a96DwCQPBQAz7wgJQefSSYx7OjGj14QSBI3ls0XYExG/8CbBZIZ2fRt6nrvVsPKI70
         x6c20N3ogXCh4SOiV3+WYL/uZ7WCktPugGwH+mcLVmJRhr2MpHsy4xqVMfrIzO9OGkve
         O0VxesmItpWnlG/wFb+KERG1Y+rwE32mXlLPAWnW3i97W+Qw+vqplMlVJLpKOVcJnVgt
         en9A==
X-Forwarded-Encrypted: i=1; AJvYcCWw0B0PDa9+2KAynHSIOQdN+fR4uOkRpY6oK+cGSejGbz6ZJ7w6LbUphFwoE1oSKohIjObMEOJcjDjq@vger.kernel.org
X-Gm-Message-State: AOJu0YzVNaQWnKYsPvoidZWDMi7JFdfu5wsga7VsvzhMtOGDbYAVAXMM
	DzPMyx6Ko7CM90IaH1xtoyl529f47sfThYtzRYeFYaRrGXAXN3C1VQ5x6o7UbAMzYA0/DKk16A3
	mQzLhIXnKYWXgWHFGxKYV2Ghsz4EV/xxL1xGP4hbkHu5lhv3VX0v+DGixJ/YpuqYKYZrRPWWq
X-Gm-Gg: ASbGncvxt/Mao8xRlPKDtLxwvEBrDdA2lr+lCQB06UASmrkfTI0PbYZumoslWbjUgAx
	jznemkxvukIhpdcg3VNncffTJTETxVrgnr2xONwbn9TPQ+vg+Au4fPnMtaZs2odfKDwYI5lfHIO
	e9F6+qNu9mEkevIkVwQq2HQuk/9E9w/5hEWJK882g6zmiXhM9AiYz4C4vM1uA6rlqdIe97nRptk
	wZeIsBlOjXhaJ9GQHjrq2UIjyWVeVROff7sMaNe8q9FBFK2VSUO3n+8b2zRjxxWclvaemQS+Sfj
	iEUuzytNxUzurgGHQSSXz6xdeCqohWyCttkuvLqoG/MlsMaRRrxDT2WVwPS3lAYID526ia7PcJW
	BYsA=
X-Received: by 2002:ac8:578e:0:b0:4a7:6586:8da with SMTP id d75a77b69052e-4a7fcab4e4dmr9723871cf.11.1750984052216;
        Thu, 26 Jun 2025 17:27:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFf+Fm2VsB3+UMV4et8MXVrn8NnN+RwmgZmsOUUV51chV+bVe/y/ao6xi3CeF1iYXaDIwscOg==
X-Received: by 2002:ac8:578e:0:b0:4a7:6586:8da with SMTP id d75a77b69052e-4a7fcab4e4dmr9723681cf.11.1750984051724;
        Thu, 26 Jun 2025 17:27:31 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8320b5aasm690791a12.76.2025.06.26.17.27.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 17:27:31 -0700 (PDT)
Message-ID: <a703a581-dfef-4ead-b5d3-7ca75424c898@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 02:27:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: qcs615: add a PCIe port for WLAN
To: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250625-qcs615-v2-0-0f1899647b36@oss.qualcomm.com>
 <20250625-qcs615-v2-1-0f1899647b36@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-qcs615-v2-1-0f1899647b36@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDAwMiBTYWx0ZWRfX9EBQw1bBDEei
 6vNFDfWgH7+ov5POw8cX9ZnD/USV99DR0lZ8Qk1J+qRMvZpvKzKI55t1VyP4JtoNf/WfTkuxz4R
 tG71dxqhMl4be7sMZGiQfsRmh8EuVdnBLY4IKVhlXPy8ruFD2Pe7AoIMyZDA9S69vsoBG1uKdpb
 /N3rIIBGHz/eciG3veK6nlGB4Sua9ABKZkTwPLhfV8qIaD32bGhTF2WQih9TtOcEpcxbaX5bamw
 sLQlYK0+NPCe+/+ijfuFkjJVJWI60rOzuIUwppx5E1m1Ujp0ibt/yhBWtStFdfiPn6eEj9Qek57
 abk7tUL6IBP4ldog3LDPak6C32mImI+iwgaeKsCAxM5j1yEdcWa4SB0OkwFT3FUAUhUe8PKqDqg
 UUuIIAmmPAqv0R18OieG7uVFrYdnisU5DGSHpXq+dgmCXzTn5CJQ6LSAVQEWztOVxFmVR+bn
X-Proofpoint-ORIG-GUID: xjM1nK7rVu-rVuYusIQIZ8K8HgMrIv9a
X-Proofpoint-GUID: xjM1nK7rVu-rVuYusIQIZ8K8HgMrIv9a
X-Authority-Analysis: v=2.4 cv=LNNmQIW9 c=1 sm=1 tr=0 ts=685de575 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=BecDG5H4cdSP3E7N7P0A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_01,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 mlxlogscore=999
 impostorscore=0 mlxscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270002

On 6/25/25 9:55 AM, Yu Zhang(Yuriy) wrote:
> Add an original PCIe port for WLAN. This port will be referenced and
> supplemented by specific WLAN devices.
> 
> Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 7cec7f643a84bd59dadfc4f7b8d95f52fc81c7f2..c996d5a9e31ce283109d55fb61db8e09d7edbf02 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -1181,6 +1181,15 @@ opp-8000000 {
>  					opp-peak-kBps = <984500 1>;
>  				};
>  			};
> +
> +			pcieport0: pcie@0 {

If you're going to push another revision, please name it pcie_port0

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

