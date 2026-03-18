Return-Path: <devicetree+bounces-277172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCPkKCeQumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:44:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1672BB025
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DE56F3010B5B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75FB83CFF4B;
	Wed, 18 Mar 2026 11:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XGUaYhA8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gc7KNHEr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397A43CD8C4
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773834273; cv=none; b=bQcZkXGR0oKERY+CfPhI1UFwdT7LyHlkD4UE539g5S9xPszPV9BOA1K2W/nIM3804GaTNfIFnndLiNtdJmMHjgPVzigPtMKHT9lfUtkRlMqX+EM82csNGMnFnygKy5urZP9OfiHjgUddXNLmUPPAMfiHy9miEZ0WneDeUC4qyrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773834273; c=relaxed/simple;
	bh=9L28kowxIIemfNyOytDxHCf7inashgWwKKT2MHSuFb8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BXVQsgr6vF2LSN+qaNgDAx2uA207fq6khUHKJpzEZCkIxT8Ch4BXmNdZfxCZaMQCUASf8NJ8flEV0Q0AoY9oDEyXS1IbX4InfypF2yo8eMzIWdOkqtGSazvGIqFZXlnA41dUM7cchlSEEYjOfD7gtbUFhfr4flOOvRzG4VuUvO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XGUaYhA8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gc7KNHEr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I9AlmQ3281050
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:44:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4mBU27RxE/tgVlcezl4VCqqbw3jruljluXdk9Ij5H0g=; b=XGUaYhA8U74U/fH5
	H/XUwF9h+GQnBI/AAp3/r3Wh0KFhUZrOW3SsK6ZB3GkJCbzegUW7p3MbeiCRaa07
	Khxv+wEta4tK1q2D1/ZBXRWpUY/xWUx/SZh9/SLNgyxIW95JurUGvD6/B9Dc1JJS
	/0vwehpzjc85CQYRt08VgsmZPPsvJIA6Kdt5JfTRcYJ7UX/YiRxF6f4ySWPx8Ig0
	UJgJlFtL4JN/Gv7XqJseaJRrp7fzAp40WQ4CKNvTwQM+sT2PfKRVgxcdSvQ3dlLm
	PwZbUKdJ2aBUxdSf+xIz3xfvmRGn5RVHwzCa/Y0Waek0UQA2r9rRKMhmotVDSaYE
	vAaaaQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cya62v92d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:44:31 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb38346fdbso480911785a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773834270; x=1774439070; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4mBU27RxE/tgVlcezl4VCqqbw3jruljluXdk9Ij5H0g=;
        b=Gc7KNHEr/UTxDE6WDbBp696CECf35RTrswlwNrtMPXjIX0awFgiRoe3iWVP7m/+lPw
         REbdc0kZQNFKaXcwP/tHwm0TaIpFymEfg8V6Rgz+Zs3QwzHG7HbfU0McuXC55lS1BOs0
         SLsgxzyG9eeJmAY3lGbmrBmcypzZxs8FD3lC0mXHJ4XS50iOe1/CRrSTkUDjOtF3iINb
         KEAfLGZ9o/HKfYPl81YEJXYvCk4AzuVQRH6GHNwYbRz3oj4RN74JdZWw3ltrmVpcAEop
         /ZoK7tVL8tJQm8M4YvIRAyNLyv8wB3JfWmcNIsH5V4r2XsVE4vy4ZTudo1jKbe8fMEfe
         yn0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773834270; x=1774439070;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4mBU27RxE/tgVlcezl4VCqqbw3jruljluXdk9Ij5H0g=;
        b=b0GXwhj0InfNMpqS72hWsH/I64ltSbscUJPyUSYvphnpok6qJJEgJDGX03PQhobDka
         JXrM5GFIS2Y2z9bRGjIFtpx5zLNGTuZpy3Biaur/Y02qQIBbBQ7YjxiagE5W/q+GFC8I
         s7qNV2a3Gi8tKGWETTdDi3QL6eITSS99b2o8cigKjrMu98OMn88tnEC17L7buMHtTy+Z
         e+RrHt1rjnjHRKEIR7ht9n32HcSBA60YG04F2JHJzL4oo3XFNrtjUFoIdJERESTvaTkT
         zHGnics48mbAt6vboBL/x57v05JZKsdeiKOuQOkt7f5fEPAyW1xw7U13UR65rKKsUPZs
         VdNA==
X-Forwarded-Encrypted: i=1; AJvYcCUS8nFGNkYJArOyQSId//yf2doahdJBhL/386o8jMfvrIHq7CjL0/GH0StstZpYOM5gbfgeCIFcaM7q@vger.kernel.org
X-Gm-Message-State: AOJu0YwhhsfQ+GUHWuXbvVg+ZohAMtqboWwyiQUWsW1+8LDsB1Xl6cui
	u8onFbcT7QdRannTIi/n68ssVMMHoyQMEuTyogcRMDrXks02QtM+5ZGoasPnLlto2qhMacgxv9f
	Or0JbT12045ISJHERNbHXUr3fLJmREmKT6s4oH6oUmQZBi3V1yWxzCtAdqDg3NGNH
X-Gm-Gg: ATEYQzxr/R/ul+VpMM0yvLSOog4sYfD1ois+4mTg4easTCSKNVLwBSKexKMQznyIrEf
	9gnq1nWUVkYuyf1bTj3CxzlNSQK2ecDOasaTSNChA8wEeO2vf6CrgEIJQePYtYIGYRK2byFWdrg
	rjT4MLeo88NtXUVNdj6bNnSUfQO4jVQ2amj5F2Hke4M0uIZrmBNhgNuXxGHkwahGFv4OJuljpip
	kOBFEWytUwKgLiVpMth3u51vo43Fvz8HfIar355nn85fin6+aF7AdO/hLH5XTpqfqRRaS0mppFB
	d4P89HvPMwCcAUmSzr84e0B7B+QX46zub0gzfVGPlDX+6U+P+WtzOAK6+HNjTGezzf+znAClLi8
	ASxf6yUdcaHw7VZ4zuPjkwBakgQeS2YB4DUudzUWpsOqaEEMmSPKhH8qdlY9KayoTxKeoZLrCbS
	H09ZQ=
X-Received: by 2002:a05:622a:50d:b0:509:39b5:a97a with SMTP id d75a77b69052e-50b146476eamr28548291cf.0.1773834270529;
        Wed, 18 Mar 2026 04:44:30 -0700 (PDT)
X-Received: by 2002:a05:622a:50d:b0:509:39b5:a97a with SMTP id d75a77b69052e-50b146476eamr28548091cf.0.1773834270129;
        Wed, 18 Mar 2026 04:44:30 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f13e83c8sm187232666b.2.2026.03.18.04.44.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 04:44:29 -0700 (PDT)
Message-ID: <c0effabb-3daa-4752-9069-c49a562edc63@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 12:44:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: add IPQ5210 SoC and rdp504 board
 support
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Linus Walleij <linusw@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org
References: <20260318-ipq5210_boot_to_shell-v2-0-a87e27c37070@oss.qualcomm.com>
 <20260318-ipq5210_boot_to_shell-v2-5-a87e27c37070@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260318-ipq5210_boot_to_shell-v2-5-a87e27c37070@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ns3cssdJ c=1 sm=1 tr=0 ts=69ba901f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=Fu2ZoqZfox1az8yWQm0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: W41KFjaJzVpdvpMBODIEnCnDyZHMdIfh
X-Proofpoint-GUID: W41KFjaJzVpdvpMBODIEnCnDyZHMdIfh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5OSBTYWx0ZWRfX3Z5Q1gK2kRLK
 SzwXBGeohIyLn5W/EfYPglGFTCzvICvEO4Ayms4Yp1GMVhCQ855/sVvFY4mpHA3AD8OGw4uDy1N
 1VqZYEXpvJEI3D59PeIRq7UC6J/H1s7jpnSOEGpUbxgZy6mlbzysVjDWhprF8hDW67yjjIdw5jr
 avb0N/B0Otj4g16D3SGBb6rEKEYpjbFhbRpGqTefjv80qSLC33m/VDYoSGujyYyOQpKIYVfU9uX
 KtikaRfZ0Sk348PG0Ao4hH1e8mWHbL/0LLDTmUSTLyhR968weB3Fmo8LhP9bEyOO8MZ6DgjEJu5
 Cr+4cUydaJHMs/4V1o4U9COIl7boxsai4HhmFXUmdw4hglRfM1rcGhCH3aVlJgtcdB8FLoZpL27
 9G1wUay32ZSE1V0dl1xRaWriQnwQWecc4u+2wyHDpkqHBjnCvCpLU9+hO6XB3Bs+7n8/ikAthIG
 jQwkIUSvqKaji59Yp8A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180099
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277172-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,b120000:email];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,baylibre.com,pengutronix.de,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8D1672BB025
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 9:39 AM, Kathiravan Thirumoorthy wrote:
> Add initial device tree support for the Qualcomm IPQ5210 SoC and
> rdp504 board.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

[...]

> +&sdhc {
> +	max-frequency = <192000000>;
> +	bus-width = <4>;
> +	mmc-ddr-1_8v;
> +	mmc-hs200-1_8v;
> +	pinctrl-0 = <&sdhc_default_state>;
> +	pinctrl-names = "default";
> +	status = "okay";

nit: Please keep a uniform \n before 'status', file-wide

[...]

> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0>;
> +			enable-method = "psci";
> +			next-level-cache = <&l2_0>;

Since we have PSCI, is there some sort of cpuidle?

[...]

> +		intc: interrupt-controller@b000000 {
> +			compatible = "qcom,msm-qgic2";
> +			interrupt-controller;
> +			#interrupt-cells = <3>;
> +			reg = <0x0 0xb000000 0x0 0x1000>,  /* GICD */
> +			      <0x0 0xb002000 0x0 0x1000>,  /* GICC */
> +			      <0x0 0xb001000 0x0 0x1000>,  /* GICH */
> +			      <0x0 0xb004000 0x0 0x1000>;  /* GICV */

let's drop these comments

[...]

> +		timer@b120000 {
> +			compatible = "arm,armv7-timer-mem";
> +			reg = <0x0 0xb120000 0x0 0x1000>;

Please pad the address part of reg with leading zeroes to 8 hex digits
(i.e. 0x0b120000 etc.)

otherwise I think lgtm

Konrad

