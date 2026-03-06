Return-Path: <devicetree+bounces-272201-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNFhELbsqmlxYwEAu9opvQ
	(envelope-from <devicetree+bounces-272201-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:03:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B2F223582
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:03:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 05FB4309F45C
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2D4B3ACF1F;
	Fri,  6 Mar 2026 14:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WCHDtMh6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E+tNAXvp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7023ACF02
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772809192; cv=none; b=Yi/E/Zm6fM2Dkj5PzbD6JS3gLGHnkCc0YVQpqGanml3fcmPpIDDQWgw8fudvS/FBhX5OhpLSTMNqN3FCgLk4QamZlZMlrx+JV7gn/UCWL7taDq2uMHBBqmWWUKba8xjVNHuqCCXCPFs9pmSdiSZXTd1G1W1RgJVvg4BvfXoKV08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772809192; c=relaxed/simple;
	bh=Jdnkgn4TzM9FmMI4HNPLlzFfbmreK2eV70pDyocbis0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=siLI6kzRU9PZuQctIKfae0rAAMIHSRA7KmbzlWU3xWFdB2eieSBbyaPWHOqzeErsDbv/jHRsTdZSfpzpl5dYwOZMgOodrBXEoJCuc+fO6jEhxEGxIY+LzC2b8ANZDKRJb+0iuYhlVQ0RP3hovq1qgy5gSkA7UhaZyqJHSIJPXms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WCHDtMh6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E+tNAXvp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626BbGdo4150971
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 14:59:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i6f1COXjYeremRBrKM7FlVp1/afp7FpybumgeuDEdSw=; b=WCHDtMh6w13y4pb7
	juxCuUiLQTLu0QFKNgeo/e6JQhRW1WzJ3m/oEF+LNJWowihVh0hta2MuvFcdxpDy
	wG5P9nRzPiu8C0s6WCtdGvXDRE2820iDUmj63SawUgoiNRQxbwRq1TTsb6kdVXKe
	L7Y0dunTtbdGHcT2cKlLGZjZNcu8p6GSFTiA6i2NyMp1qlUsQAGnHlrl8jj7Ww4K
	YKf4nvOgXn4d4ugfHvLUZHHFc/c7Fh3QuD4dIQ8T9rgQebV5rGzae/UHrt3+TGDk
	p7rmEJwPFSOPdfFwG/wKaggH/MqWmGXnCLBlielSrz/0I2mltMsFr73SiCTCM8p8
	9aLQmQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqf25ujfw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 14:59:50 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8299c57642cso4845434b3a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772809190; x=1773413990; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i6f1COXjYeremRBrKM7FlVp1/afp7FpybumgeuDEdSw=;
        b=E+tNAXvp8TXZbs7/y0qFhG1m7Royf++pegLHoDGeKiHiUrWmtIu7ggklPwIf9GVeko
         r+3s0wg/PHjC6JHSdA6a2G7zCrmMZtbsuKLgB+G4yNiWe6Ei8j92P8FLMkr/WIJDyPpa
         dGfRvmyA8SYxewKsAhlWMwt8CtSBqlGr7Zmety19LeHQCtKn9AqQIvwZ3H7G1Y+JA4Pp
         95oA9vA0BD5xiipZXulqfvECQA3HT4BQUwTlUZTH6iurYEvh1fJM7UuQPMKgvgmxSjzL
         ejamVhl60yMnZp+BEfC/WYfCLLwrULeQ155BMi5sG+98gUPy59p5GCjQkeewTwpqFhxE
         49DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772809190; x=1773413990;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i6f1COXjYeremRBrKM7FlVp1/afp7FpybumgeuDEdSw=;
        b=HgaACM7V9Q4rUQ9dLOpq2HBWPWy5xvZfzBwXQ6Q0gOBjm5HBUu97KoyReQo7TjLTIS
         Wh2NYBTYkVh/PFH8HAd7pJHXES3QL/awUi5EbjsmNanaexGOPYDDgc7JgWRrDoaEwwqu
         WRh8kXjuXNBwYDA4W3z7jUrPzgeyaHato4SPo5eCjtenUpaAcbx1qLAKhRXcbNwNmF8/
         kPAWXSYkc4jiKWHvk3+gIpdjZKsq+XjmTcNuaDS0np9OmZGnBxIgO4FPReT3440TcKnB
         mZK0SwJC66dagr8wpg7AKFb6WF3IS8TmlaK5rOp2mkjz4JGswCJ1PbyscqpafYaU3qnD
         NJtA==
X-Forwarded-Encrypted: i=1; AJvYcCW9UpvtMgCOiploZuvgNDTD2BZkBQZjMo5gbC9wirQFnyUK08Kbw031XeX30Mx5FOOu62ceshSx/6bl@vger.kernel.org
X-Gm-Message-State: AOJu0YzER55p+usgQm9ZH4iKWUFol8rTWJy5QzLPCENFbrRirv5BvQYW
	YSHx/Weyqp/DteWxVZyQJIBrQDeZiPYQ0Sd62p73/eSssYR3Xw7oCjhxP0nrByQIGgg6i6NZTbV
	SOayfGF/ReU6OP9xZWQuJiMUyyQI7AxR6jBbcQ/PhPKVQD0RngFsGq4bwNTk4Nn11
X-Gm-Gg: ATEYQzxLGmtk/ENhKdrE9XMMLgj8bemSYsUIDYc66RcXIxjY0sYaftRn4fBIcfMxE2e
	NSmHE9pr2kE7ZbYx9TTeXIseVMEv69ldNAPWq+MPVbPwx9GFHaHuCWTIqhgX1CM4098NF9w5ydV
	KbeB4InPenxG18ycoUTUTxHdt9tPeJTlcr/UEk9TrzHsVU5921YspNWe4qen15tOUz7k8h+wNet
	zHmOcUAk7cFLjneE8HL72G1MJ4kycyF1i8odsIlLAMTCoOWltYCpY72ZI9YvfZNuWiUFajJS9k9
	IE8zz4PnDbYzN4Ruu6gB1E8q39Y4Nc49YtNQvJxy/RyE2iHF+nFP41uYYDWezEeFmsBScqSF7mp
	Sxj71jLaB+0HRs2FbsjT0E+yTj+4S7qNurWEvAxgBk/yPT7WfJAXS5+L0boB29/hYfwrTk3Y8mU
	2rW1NrCO+3AxE=
X-Received: by 2002:a05:6a00:27a7:b0:81b:1a87:9eb9 with SMTP id d2e1a72fcca58-829a2dca08bmr2370416b3a.25.1772809190245;
        Fri, 06 Mar 2026 06:59:50 -0800 (PST)
X-Received: by 2002:a05:6a00:27a7:b0:81b:1a87:9eb9 with SMTP id d2e1a72fcca58-829a2dca08bmr2370387b3a.25.1772809189723;
        Fri, 06 Mar 2026 06:59:49 -0800 (PST)
Received: from ?IPV6:2401:4900:88f5:81:e13b:ce78:7823:d9c3? ([2401:4900:88f5:81:e13b:ce78:7823:d9c3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829aeea8644sm117824b3a.33.2026.03.06.06.59.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 06:59:49 -0800 (PST)
Message-ID: <cb5e05fd-f83f-40e3-bdf2-66bed449b6f0@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 20:29:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/7] clk: qcom: camcc-x1e80100: Add support for camera
 QDSS debug clocks
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
 <20260304-purwa-videocc-camcc-v2-4-dbbd2d258bd6@oss.qualcomm.com>
 <1d92329d-139d-49aa-8fc4-515e7c574774@kernel.org>
Content-Language: en-US
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
In-Reply-To: <1d92329d-139d-49aa-8fc4-515e7c574774@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: sAHqLCwFWaJBfWOvBd-mbL_yYC4rQT1o
X-Authority-Analysis: v=2.4 cv=Uvdu9uwB c=1 sm=1 tr=0 ts=69aaebe6 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=y2yTRUwKQ5IGBUayTIQA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDE0NCBTYWx0ZWRfX4jrrMHuixk72
 lxAz5zq4949UHLTuJM4toS/NlzEuX+ySoa+3bzMURzd9hCxVEohLaH1BKL1FcBh+RHf1NjdCfyl
 DBoqO8uZnSHhznkxYXbt+AhEiVrr/OYOEnvj7+YDdStHcCq5WWuWd+OpQTVXaVGeIah1f7U8Yui
 BhoVE3Ls0vvbrFG9+YbPsMMjdjYq5gAE3gYlbUIlZ2Bt7siFO5qGjYZfijg42NVagIPje0WE5nG
 hI4pflt1p/TtntCHLHeq7WWDcGPI+n7aClZVzh9hQFLn/vsywbM7pwoVm8fzUqa/6oJUoVbozkv
 l4ujLFRHohcFe/sBwwheqNTeFcXXDTVo8AiVItpIrQEwJvP7LLH8sYn/ZDei+4cd7e7DC+dN16m
 xhaMET/SAF/TlwZuK77mvyA4j+sogfryWXLpwOSYNctlUwMLNnuH28qqqaaPnZlSkQaZhZrhMH2
 7XTZ6IcfNYP4WGJk6KQ==
X-Proofpoint-GUID: sAHqLCwFWaJBfWOvBd-mbL_yYC4rQT1o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060144
X-Rspamd-Queue-Id: A9B2F223582
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-272201-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/5/2026 1:23 PM, Krzysztof Kozlowski wrote:
> On 04/03/2026 18:40, Jagadeesh Kona wrote:
>>  static struct clk_branch cam_cc_sfe_0_clk = {
>>  	.halt_reg = 0x133c0,
>>  	.halt_check = BRANCH_HALT,
>> @@ -2398,6 +2459,9 @@ static struct clk_regmap *cam_cc_x1e80100_clocks[] = {
>>  	[CAM_CC_PLL6_OUT_EVEN] = &cam_cc_pll6_out_even.clkr,
>>  	[CAM_CC_PLL8] = &cam_cc_pll8.clkr,
>>  	[CAM_CC_PLL8_OUT_EVEN] = &cam_cc_pll8_out_even.clkr,
>> +	[CAM_CC_QDSS_DEBUG_CLK] = &cam_cc_qdss_debug_clk.clkr,
>> +	[CAM_CC_QDSS_DEBUG_CLK_SRC] = &cam_cc_qdss_debug_clk_src.clkr,
>> +	[CAM_CC_QDSS_DEBUG_XO_CLK] = &cam_cc_qdss_debug_xo_clk.clkr,
>>  	[CAM_CC_SFE_0_CLK] = &cam_cc_sfe_0_clk.clkr,
> 
> Continuing review form bindings:
> So indeed the this ABI is used by X1E, but commit msg completely missed
> that - just said you are adding X1P clocks.
> 

I will update the cover letter that both header & this change needs to be picked
together to avoid ABI diff.

Thanks,
Jagadeesh

