Return-Path: <devicetree+bounces-243605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E578C9A947
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 08:55:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1EC874E35EA
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 07:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B4A3304BD3;
	Tue,  2 Dec 2025 07:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i/B/43rx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b2kWoHXb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69403043D8
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 07:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764662139; cv=none; b=iDAml/2Ob1ewcGXU6kZVRvmpZaBvp1I7HAursigfe7/hrJ6KljZI/Lm7BFG5MqSZTGe8MIIaSuUfhvBcvOJEGNV02UuN4YGcat5COCz+J81/HBZxd3YPAFByA2ydyyv7FSf1OXgG9r3XDClECKT6ET9VIbnFrtymS9wYQJTA7iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764662139; c=relaxed/simple;
	bh=qiZ55Y0YRim6hw7FUpbTQeymDxT4IMit+Hcld2r/oCw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WbmaGbHtpFV1Wp2k1lD8eXnbzmyl8ZjBgfEVafZJhV0mf5zM5fJcGKfgYc0MTRo7J0+zNFwtSPv4mFd9l/DSUDxcYbFNjuU73zI9fC6opTrarXFAqZWDorgTqzUMH4G0PuddmXnVbYqtmrRyF9L+gYDpc/KKWz2dGFfuIyQrQRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i/B/43rx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b2kWoHXb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B24CcRx1591497
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 07:55:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wya6bVI7BEkGEtZdZUR36jM/nyPYy5oPLlPIXVCOb30=; b=i/B/43rxlqcUc9SM
	EuNpnImqXgLWbV05MNX4DZwUzZRasEES1sBPda2zkiwvWH6HmpU5fpxYo5Jegrtv
	V1hTDBcBGnD20f2Jv36nkO1rTJBRyLKI76A5BUZJvwNk6C3hNfG0WOq+UBmLRq/m
	f8TVtca4souGWqy7PtSn0LkmwZ/k9MMhBzePgHLkg8XIRHRpTQ+t9BlPbu8VrHqX
	ieNalV4YuK3A0IikRddliyDio9OixCL372XCO+ViD3zepLizcWiZJHYiNXN8ZdIO
	+FQrU5hAgvdwSAiBxVN8VorcyXjuvWA9PAwHtoL4EUKqmesxN1wJMdbJvMuO+3GJ
	GeZPvA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4asrvr8kst-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 07:55:36 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7ba9dcc9e53so764224b3a.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 23:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764662136; x=1765266936; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wya6bVI7BEkGEtZdZUR36jM/nyPYy5oPLlPIXVCOb30=;
        b=b2kWoHXb9dTz1mj9SE/ID5oG2M9p+6IlJlBA7en3KOA9IyLZKIiygLITy1hAS9+1f6
         lpzwrAIabyQV9+hJvqJ4WxoyYUG2lA9wIPUSd9Wq9O8/UHBbMmSkXW8nx7z6Skhe7+nX
         QGYcMPnTpMxtv36n4dCyEJXd5m8VDlPW4rWKFu5IkFj7ssIWFzxzJdl3GfyqR5qGe4Z6
         AVpwFqp4rmsjZYHeStC6Il1ZvJx/65ABIK65uzgwTSZV57K4U6UBpkWFUX/LxaJHzeu0
         dGYhV3rcb/wymAqIIfp/+PoUPCe7M3+lzTc/+2HQE8hyfVB8jQXDkJ8S/+lyJsvq7cQU
         /fUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764662136; x=1765266936;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wya6bVI7BEkGEtZdZUR36jM/nyPYy5oPLlPIXVCOb30=;
        b=LA6DjV3vI2QtbNN6YkLFgNhzA+HyunKeGY8KP+c2JlL4gnkF6RZLa7Otb3IPgkzTQ+
         X9vMqZzauPzMVV0mZ89jUtJQmxbnHdhc4pXmN73mknnPirKsbCY17mQHN1i4lJBgypop
         XTNoa02cYuvkCBhlK6IXiLT2oN3KhPKM999PbpaoNnv8TX/XFUlWjJU1Dqqf5TQ1LOvH
         CQEK1M5OdwHN61O4KApPZUh5DS+tZJtC+5x7PPIbivb/H32kaMLxeJYC4ElVLzwVmRtG
         tNVuga1Ko6dxjLIkeKD0XVQ/481tLKfh2M9DiVA4zUdNnu/AIJeFC/QgVJTBweQw3L+Q
         cYDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcQ12CKMMOlILybCGhDqbNvut4SKQv+NTWf4Z+tR1885ZrIlI3e3bhuRVxT70MKLfKB8a2RyapBYMb@vger.kernel.org
X-Gm-Message-State: AOJu0YyZUuJ2WaU082BuDYdpak22W1wAznD1lrgd3YCk3cPF88mIBLCm
	UrvUuWsLLSjdNGgGcz6Ktiob34v6761vrZqyH46cDeIpRP+/Wvt+G2jiOyUp/fVzskQhy5WtORn
	htzF4v/HqFtP/SNZDuxhh5f/70+ip6ceRJ9MX54HeIu40/+NaF8lfDQfZg8TFy7NuG6f4sGA=
X-Gm-Gg: ASbGncs0mx/tvsWdcV5l8/SeSaiESx57wPgDLVlt2W3OZaUkL5UU/9dHnxXYd8Lyj0z
	QzFvVe6l0NLROp3VzaC8XnxNL5DAyGI2ZrmDv3GDXIsEViDOYALQ56m2yWfrUH2XaOURMK76Tm4
	VqnMfZNbWEZMY1fNimhxROOzA3arvwGzG3rrVZFceX+HyCHx0IBUqOA/kcW7ITn4j/UP8YPMtk3
	34UKbCpZyIgN7lUh6c6MOnA3RLquTtXiBZ36I4aK9XhlaaVqpP72IlgR6Rh+EH/yYEsEv55Gnel
	XRbwvolvRR+po4d53xu60Nz1wER4ttmQLPaock+Uvy9blwku4mUu1mhV6i9/uR1IwlwhVNNioaO
	OndrNF3MOpeRpOjKAEfzKtQV91NJC0Re9mu+Al9g=
X-Received: by 2002:a05:6a00:4616:b0:7ab:4c7e:a9db with SMTP id d2e1a72fcca58-7c58e015db7mr23192761b3a.4.1764662135814;
        Mon, 01 Dec 2025 23:55:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHDagCqM24265L2wptqLWDdYstMbaqvH81mXy67wZVr269Rlhb4Lxee4n5gwW8t/c6a0UNIrg==
X-Received: by 2002:a05:6a00:4616:b0:7ab:4c7e:a9db with SMTP id d2e1a72fcca58-7c58e015db7mr23192739b3a.4.1764662135348;
        Mon, 01 Dec 2025 23:55:35 -0800 (PST)
Received: from [10.217.216.168] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7d15fcfd0b6sm16045407b3a.64.2025.12.01.23.55.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 23:55:34 -0800 (PST)
Message-ID: <4f3e5259-b84c-46aa-a744-5142b697f303@oss.qualcomm.com>
Date: Tue, 2 Dec 2025 13:25:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 1/3] arm64: dts: qcom: sm8750: Add SDC2 nodes for
 sm8750 soc
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
References: <20251112071234.2570251-1-sarthak.garg@oss.qualcomm.com>
 <20251112071234.2570251-2-sarthak.garg@oss.qualcomm.com>
 <5887f8df-1cb4-48f7-a2c1-a13330d9dbda@oss.qualcomm.com>
Content-Language: en-US
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
In-Reply-To: <5887f8df-1cb4-48f7-a2c1-a13330d9dbda@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=D5VK6/Rj c=1 sm=1 tr=0 ts=692e9b78 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Z_JSJptOXzPKhhstl7EA:9
 a=CffnxMIoaBPO8yaq:21 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: FbuCvQJmxoFHWVMRtbchjLFnLVquKV_C
X-Proofpoint-GUID: FbuCvQJmxoFHWVMRtbchjLFnLVquKV_C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDA2MiBTYWx0ZWRfXy++WfpgCsmIn
 B7uBzwA5mzBRP2o9GCxFaJXboXFtWp1s1/HAiZy+h8Oa8ie2AcqACIKUsh9MmVMGzeCBgRCPc/2
 Szy5wipKHd8RRpUc/sD9BmkF/fev9cOOH9sPExThunZtJHi+HtFi/LEGyBXzYAs8ZPMwaHJEDD9
 iApnJi0QfvjJY8Jn8+LYjK00BBdAVLIzjU2Dyixeky4d2b1jt8mOxk3mBGi38g6LnK+oTHNcwfz
 5ECCgGa/ICb5BtRF+g/aru9x/DisCA2OZr2LUUtmklaviV/QqbG8++y0kkBTzE/jtkMjv6oSBah
 lnUecub+Zr0mQTEOHlRwyu+SnIpabxxx8w7OQE0+RtcTigfpw9r+JFVmVUM9Xf1R/QrjSd+jZYM
 Vnb/S5k+8RdoUmHrQoI2Ywr6o2qidw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512020062


On 11/18/2025 4:33 PM, Konrad Dybcio wrote:
> On 11/12/25 8:12 AM, Sarthak Garg wrote:
>> Add SD Card host controller for sm8750 soc.
>>
>> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 54 ++++++++++++++++++++++++++++
>>   1 file changed, 54 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> index 3f0b57f428bb..ba8c010226e1 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> @@ -2582,6 +2582,60 @@ data-pins {
>>   			};
>>   		};
>>   
>> +		sdhc_2: mmc@8804000 {
>> +			compatible = "qcom,sm8750-sdhci", "qcom,sdhci-msm-v5";
>> +			reg = <0x0 0x08804000 0x0 0x1000>;
>> +
>> +			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "hc_irq",
>> +					  "pwr_irq";
>> +
>> +			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
>> +				 <&gcc GCC_SDCC2_APPS_CLK>,
>> +				 <&rpmhcc RPMH_CXO_CLK>;
>> +			clock-names = "iface",
>> +				      "core",
>> +				      "xo";
>> +
>> +			interconnects = <&aggre2_noc MASTER_SDCC_2 QCOM_ICC_TAG_ALWAYS
>> +					&mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
>> +					&config_noc SLAVE_SDCC_2 QCOM_ICC_TAG_ACTIVE_ONLY>;
> Nit: the '&'s look better when they're aligned to the previous line
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad


Sure will update in V6.

Regards,
Sarthak



