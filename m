Return-Path: <devicetree+bounces-273579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHecG8Y0sGnRhAIAu9opvQ
	(envelope-from <devicetree+bounces-273579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:12:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E29253016
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:12:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5084933C4056
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B9D3397E61;
	Tue, 10 Mar 2026 14:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YsQM/M47";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PosIlbpU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65A7391E63
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151964; cv=none; b=O/2U+uN3I2bOYnvhapXMdIBZg6It2kttDDzqbxyqxfjS6Yk0gkf8CGFzIkajsKN2l+OwXKF3pP6YRKaJgujKUGKC2cKpHVo3Sz47luLcPnTIWRoxK30lPh2vFfw/e2WrMtp2btDGQGyHnh5iIWZbvg/3+MTthqD1j9qQyq79WsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151964; c=relaxed/simple;
	bh=+0QsUmKSdIAOx3H5r3Bwuurcl+aY3MLfHPpoPquchN8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WYNNcK7oIy9h3L3+RUlOaDhUnD3Fr9AwQ87E1M0xTR/2+mg6IMzJ85TrEbOo3y1PQ3CUKKLItd2x7gwEFLeuxciUxw91FbMJFV5FkR8vE2DiDmqw0XcG6bb60qLsFBQYDD/U0xEi9F+a9lxZaDEvx0wlJuXQXl2PbTcCTO2z3a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YsQM/M47; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PosIlbpU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaRJY3417078
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wyF4wZYpsxMauFewTjHkjZxZN1aE7LqB8yEQANT66m4=; b=YsQM/M47A/tVFFWU
	TM3WoFHx2VfZxVGNJ2syTUVR+okXmuEny/juQEf8fwZ3pMnw2JikAFHjIaw8x+H/
	Q7QoYcN+IeUBHe359Gze6tYv6DatTqwFMM2NcZ9E4F5S7tWpo7ClYkMCjoYCG3bx
	w5LSrBMI6MDohr53VeXxQYckcDQHLV48mv8AwUEBdO/aRM9Ri3kpxMwI1usajMj/
	qMeNTr/GdW9JNVn4KVxgt6P7LZaWXCOTQWTImoSSbTa9z4jlw8sSNMlX+MgG4FAU
	qI2dmsuMWWOzmosed3GVpB2XN4VLp6txp5TzstSYu24qczggWf/rztznjEyjdtEu
	wIX7iw==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctja28mab-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:41 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5ffc4993b02so1001970137.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773151961; x=1773756761; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wyF4wZYpsxMauFewTjHkjZxZN1aE7LqB8yEQANT66m4=;
        b=PosIlbpUDbfhKzXBSfF3QnZOmghopL0UuJWY0vLV/jjp64SohguqNm5dJEYqnhU+Cq
         Xcj0G/hhU2gnCzaAfylNyMVaXDg2S6qSLlT1ZhOhHP9Hbmov2iBi/3koNr3yfY0mg2Tp
         gKepIoSF4Y9wcjERWZKSH3TrjIYuRLWfkGv3+BJTNlxPK+mk6Ou5MMLHMDAambuqm/7X
         76Fic9/kr0miIPUhh2JLHKoDoHv9SRQvBCqmIVb3bSelhx6hofmlwTMa0HUgTLdkS3sR
         HCVklECPAoLSPther5cYG2SQKZHSrmk3qciJ8Zc0/fw75RINVpTrCZGfm7j6q885K57b
         kCUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151961; x=1773756761;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wyF4wZYpsxMauFewTjHkjZxZN1aE7LqB8yEQANT66m4=;
        b=kVupFEZCSvagYHqexCV0xkg2R8DNIE+bhTN6J8mSZDqr6c9e876F5fO2LRW/wE3H2F
         9xC6GfCA5e/pTGAZ64mC7hDa2uW6cIk93TSu1RuNq7/TZW/RFtGHP/JvCVqn1cdZwyE2
         ztL+0+xK72ym/Cl0tKClilSAnVKeVC2JugJyt825zjf8DPnbrXPYXBZtPDrD6spCO9BD
         KYkgJD04TD4FU/Ezglbo7/sB83EIk5wVFLATuOTn7N3fFRJChsWGskfdKZsew3alqW7I
         9bCWhAsr7mt6e+D/XlMQeT57X+ZNFdwDf6df22k08X2e+BHVMFBeC99hsHIva5+Ylors
         ll6Q==
X-Forwarded-Encrypted: i=1; AJvYcCW9Ltci+aJ76Uz0N5KvSHc1kSXLZTBSABLmyEOP25xFELgJQBP+5mqSRNvaKLnBBVa/Xpx7HO2NYwNw@vger.kernel.org
X-Gm-Message-State: AOJu0YxNmTZIhdLFazLsgZBlmhZJF9mUKojvpq0LMfrC3h5a8dFwBio5
	lW9yLmna0JvkdTsdtBkVCbuYXCD+j4oTjGd8+L5rT+797/ufsLKALj9QRe5kyIh0Una7dB+HfdP
	fnR2VmKqXRSdeFVBR0qqkekeGbhPSGQMmokSaz8EhkgCldGu3TMkLipsWvcMTu8MT
X-Gm-Gg: ATEYQzysHhz+quxXkoqzLRb7f0C+oKV5+njkFdH2S9HMrVU6VToX7Tjyl9lMHqUvaxT
	u+tJSYnzwUgUnL66z12uP3+y0/ZtQ5cIMCe6MiZQIdlpxB1OOaYHm5p8yzyDoD+Dfj8zJ6n1/UD
	n6wt9ueOAyd9ckz3asNFrt1NJaCQ78C62Py8VwkdrOFCEUToyJQ7oPDtfM11IP1BlVuezZCU96t
	COj4OFqZKC34KeHgOG453oatRrsilz2DfGYGx9nJMl5lggzmcsQif4XIhjb5CJ3BoNKLxEuMrkG
	sekMkrxTJmzWXQU9E+WFIjAmAQFEL2a8xrqllDNwdN0XFy9xRA9pNxB6Z0Untc8T+PDidxUQE0N
	teguHTAQMLKv1s719vwDKkzz8IetcFzjggMHg5ZPeZMfbz07lMAeF0OSAaYEySSMl/P8bvMR0gP
	Xayh0=
X-Received: by 2002:a05:6102:32c1:b0:5ff:a16b:93e2 with SMTP id ada2fe7eead31-5ffe5e9712bmr2763504137.2.1773151961082;
        Tue, 10 Mar 2026 07:12:41 -0700 (PDT)
X-Received: by 2002:a05:6102:32c1:b0:5ff:a16b:93e2 with SMTP id ada2fe7eead31-5ffe5e9712bmr2763489137.2.1773151960520;
        Tue, 10 Mar 2026 07:12:40 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a3c66d3fsm4317323a12.2.2026.03.10.07.12.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:12:39 -0700 (PDT)
Message-ID: <39c6d1de-53d7-4aab-b054-067c182fe0c0@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:12:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/11] arm64: dts: qcom: monaco: Add power-domain and
 iface clk for ice node
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
 <20260310-qcom_ice_power_and_clk_vote-v2-4-b9c2a5471d9e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310-qcom_ice_power_and_clk_vote-v2-4-b9c2a5471d9e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=c9WmgB9l c=1 sm=1 tr=0 ts=69b026d9 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=z_dnvKGLtVwtNw_c-ccA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-ORIG-GUID: ZhoBJ3rN_nK8MDoFe14Z0PL0EgaBwXG2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEyMyBTYWx0ZWRfX4B/0yVe+ZdxY
 Fdou9GchcQQ2ZorEdA+unoJp9CAN2jSAUBhwkSdJ9a8L7ZTFUvdyYx1ylpNOYNRraqsqrBUdNhP
 k0V7NLspyheA7NWGDleWBXtmtb0jDK7I01oCoj+fhbUYcGFnohqNiJNYcpToSp4j6sG8UGeg52l
 YNU6GD2UgGVCsySNrDBFqf5tGRIYg2qoXPwWSepPsOmNqoe64Nh1E9GhOsCzI3lW9eeWnjq2D0/
 1s9gAGM19HQu7JeVgxM1YKV4fm7WcRGBJ9SmbQDOdT9ms220wHlcHLe1S8WjJmREoHj46pvYUZK
 VG8fBye/IbBPSv12qKejRMnr2U12oFmBbhFSp/6pVwoVaw0ehEGeT9zStmtuFDCEuqcEgjib4K+
 d6e1ulQYTZnadXHGhz40Ei1MFszz2YBmvbCf1zLiFTWibftDXwEbjPnFmkq36ZKB4ibAGikm/Ps
 ABdqOYglKe2TPO2JQ7g==
X-Proofpoint-GUID: ZhoBJ3rN_nK8MDoFe14Z0PL0EgaBwXG2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100123
X-Rspamd-Queue-Id: F2E29253016
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273579-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gondor.apana.org.au,davemloft.net,kernel.org,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
X-Rspamd-Action: no action

On 3/10/26 9:06 AM, Harshal Dev wrote:
> Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
> for its own resources. Before accessing ICE hardware during probe, to
> avoid potential unclocked register access issues (when clk_ignore_unused
> is not passed on the kernel command line), in addition to the 'core' clock
> the 'iface' clock should also be turned on by the driver. This can only be
> done if the GCC_UFS_PHY_GDSC power domain is enabled. Specify both the
> GCC_UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for
> monaco.
> 
> Fixes: cc9d29aad876d ("arm64: dts: qcom: qcs8300: enable the inline crypto engine")
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

