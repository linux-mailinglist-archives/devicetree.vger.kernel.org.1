Return-Path: <devicetree+bounces-257520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANn1IfzXb2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:31:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B33C4A6DC
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:31:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0C60A84B3C6
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 16:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D893446D1;
	Tue, 20 Jan 2026 16:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X6Q6Q7Na";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AAhfZGfB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1617344055
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768928041; cv=none; b=BESSIgzu244ZCn5itQsuvVhL/rg6w9U9NTAc047PJOJhn/2moh6Cb/4qP7nJhDMgJKAT36kuIF9b0jDo743vmbejW97Ihr9j3e+YgSGZCJIggqcd/xkBKPdrkzdM8OaZ16WhFBfZkqLH/i9t8FSvJkp3xxnn7SYxDcVRmP8+Zs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768928041; c=relaxed/simple;
	bh=Xh5NhbusMKugFJN+jyX+RAwANK94Y1YcdWvZxclernI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wxz1VAQUoVlaGSJI+o190B+/ukVVRxLXGiKBMad9YtjlvKlqcuQQjhhAd0cuzwb/rzDo6rDDkP2qNxICN1JWuS1j0xXftQGh1urgZyVgSANlk192tK4AUa3rFZJXmy913u4IzzEIJNvw58bWRCfNtzvcmeSYSeQHpLzk6RaHpuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X6Q6Q7Na; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AAhfZGfB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KES29v428958
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:53:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xQH8/RM6VC8rU1HZ+RTjzOS2KZDYo8OMBNTFVGcVfA8=; b=X6Q6Q7NaIlQVfsHh
	/4tut6VsbqZpTQhdn3jj/OmDh3yV8kGy/XhZH46s2QicIaNam1nw/o+vWtyZ3GEL
	V6rpT/5EtG3tE/xkn1hj0bCQVJlp6s2io+TjSUYM7Dq25gijNu/F1jVi36eq++S8
	Ozf0S9E5A/eNn2EB2FePe2yl6Bn1DPmRW9i2i1IcWkPel3lQThZkVtc22Zw3CtgP
	GfIA+b/J9eoW/d4JvodzpUyXWB9KbyGZEcbVDzFQ9/lI0e29GsGnwVwMg3aXKKOi
	y7TXhgfkqYT3BOv1SdnGGESyodm2cq081htQR1mHbAOadr/1YDsJlltI0a79TYEN
	GZDIQg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt4ps1ubq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:53:57 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-bce224720d8so3255287a12.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 08:53:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768928036; x=1769532836; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xQH8/RM6VC8rU1HZ+RTjzOS2KZDYo8OMBNTFVGcVfA8=;
        b=AAhfZGfBxbVhKViqcGjguptC2WH34uD9P4wwWB9WxgGk2/4W0dMjqLsSou9nLkuuNh
         kZJnrjow7d9xupDvzE28dO7loA21VXf/4oQ2mOQYB6E0rcshPOl5gO3oeT0cOjAJVORr
         swvQkCui1uksLGOaCV/io0CjvJNhHzYYUTneu0rau1FJG2qBLA4lzWUt2lWLSEO/9C4b
         dVImJRlZleNBCKrZ/HHMNZfdfAQyg4fYHcGzFer5GOrvf09v82XzqUCvMlWuxPBlhqfM
         uc9rO4SF0JqJD8Pb+7CtLD2fUWNDOTFroBgp9u1NLKK8Cp1RDoIjw7b3xL/dDCJPl7tx
         J2pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768928036; x=1769532836;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xQH8/RM6VC8rU1HZ+RTjzOS2KZDYo8OMBNTFVGcVfA8=;
        b=JHMikoOY3c0somoy/SDf7cQi8OAc5/3EDzNR4033IeDMMMdxi1vMj7hK5guAtNBTi5
         HJQh5no9iugMGFGZWRxWDaFv9MkhVCMojrNcVpA9znaFziqMQP+zF3fe9UB2LdPm3BCI
         3sVeXjfaobw6Il+y0Nt9tibD4jVEI4z1WFMS2EGUTrTABoJQBUmhHPqkRcCEcMZzNRM8
         /71bnWvIJ7PJMe8NEBbzdyLLrXXW1XDHjBGhfomeceTT3GzHEfwIaFZ1o0JG27eISsmQ
         jmNbIljl/+RRbkWdPx90ysbyIUZtutZGXust1xRNl+IP1BLkYzF16i+M9oG9DJHV44OU
         +kwA==
X-Forwarded-Encrypted: i=1; AJvYcCV1uPPzyE07uuMYdz1W9f5AyKqfbh0tNZtXNLnDCxPlsdNFRFgsy1mlRE0IAb4cHzEEg18sjTokqsy9@vger.kernel.org
X-Gm-Message-State: AOJu0YxvfN8LV2aX+ccrbt2Tod8db5NCTsGx1wH2PhpHJqtDHsTZvc7A
	sHdOk4emniHGzcmIJdjf4ZmvbI7MD9SUwdWzdEldn0B7BFiFSSDd05uPDwfIMU8Frs+7aZ8jYO0
	BWfcyYwcEp5vdjxSXH/wrdvOIKDnCa4Ani7Ozrx6aKKkgndDOE6rHmgYzciSmaRF4
X-Gm-Gg: AY/fxX6+R2eWc9xnRYEi8rnHd0FuyduZt0nySMB1VYLxFHkIvx9aXd5qcWXpAs+2qhg
	BU+AHeu+mRW/pvIQ7BiDXdl+EpW14NekKtLvvzfjPf+dealeLBHw9i+qS17/2ahWR3sw5C8nfGo
	KXP/kBc4y8Mu7xF5MSC5ouQ6EClx3hRtqlA6vrPJJS5Y7k2YItYVDb3ioPx31y2zsqCFQw8UFly
	thzf+tbkJ8TgDWqrHHrkqYvz/q/YmNOwTOrkc677rkI6t0tItigwo1hzXE6IWxx0eruIuwFYY+A
	LALoxPI/RfncHHxvFipobWj5XTv6kP4/HmmP5hTBK1HqgP++r0nmUgaSXtvexQEdlsVQxLMjGoh
	fl/DF9qznbPxDlTsZu8E23aJWpPDiOh+qyPVzjA==
X-Received: by 2002:a05:6a20:d81a:b0:38d:ec2d:80e5 with SMTP id adf61e73a8af0-38dfe71dccfmr14977011637.45.1768928036287;
        Tue, 20 Jan 2026 08:53:56 -0800 (PST)
X-Received: by 2002:a05:6a20:d81a:b0:38d:ec2d:80e5 with SMTP id adf61e73a8af0-38dfe71dccfmr14976971637.45.1768928035633;
        Tue, 20 Jan 2026 08:53:55 -0800 (PST)
Received: from [192.168.0.195] ([49.204.25.225])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7190eee4fsm127957315ad.42.2026.01.20.08.53.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 08:53:55 -0800 (PST)
Message-ID: <edb23628-8f07-4332-8a85-2b4a22a1e1a0@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 22:23:49 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] clk: qcom: dispcc-sc7180: Add missing MDSS resets
To: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        cros-qcom-dts-watchers@chromium.org,
        Kalyan Thota
 <quic_kalyant@quicinc.com>,
        Douglas Anderson <dianders@chromium.org>,
        Harigovindan P <harigovi@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260120-topic-7180_dispcc_bcr-v1-0-0b1b442156c3@oss.qualcomm.com>
 <20260120-topic-7180_dispcc_bcr-v1-2-0b1b442156c3@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20260120-topic-7180_dispcc_bcr-v1-2-0b1b442156c3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 6QvXDIpMjlw3pKvQa5tgtkiOETG41f_F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE0MCBTYWx0ZWRfXw17fkIScQpST
 fhzcUxrq0sS8y+Nv2HTqubDHfJXGGApIvwRGu6OWPQxjgkWNleLcrXsqiXKjE0GDhx1VkxUz7U4
 RruSmuEbKHqwxrb0iqJlnq09nmOv5RXQnkEHth+9kF0BY4QtwCQUcsMgsl7sSsbo5aIitm8AAaX
 ZXsGddAYDFv/7Wu+AFYfXgmWOYIIuooiEPYow5yVxcyqW3x1mUhg2FjKxW5cTKoWUcgbHSA6inE
 PZptkyi/yAvnFCukUv2RD5v54FNRdg1AyyjqmsZ+V0N28krvipnan7n3F2zcrezNwmmcg3siVvV
 GNSSbSwK4YvxGgZd2IaoAeHVkLOwYnI0KE0rFZd0JlM9RYqXjoB2qU5MZ+C7067GNDTFTzAoFvC
 0SyVCPgqBD03NAOUzPjHxXppmpIoGfIfrhqvKMZgxpnFEfuXPOjos9SvnLM+By+G/b/HhgVHT0F
 zqtN13O2bHzoF+5u9gw==
X-Authority-Analysis: v=2.4 cv=PdfyRyhd c=1 sm=1 tr=0 ts=696fb325 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=NUZ/Q5sP+scsJfd5oYcUKA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=EEUffno1QXpLnStXY5cA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: 6QvXDIpMjlw3pKvQa5tgtkiOETG41f_F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200140
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257520-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3B33C4A6DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 1/20/2026 4:49 PM, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The MDSS resets have so far been left undescribed. Fix that.
> 
> Fixes: dd3d06622138 ("clk: qcom: Add display clock controller driver for SC7180")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/dispcc-sc7180.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/clk/qcom/dispcc-sc7180.c b/drivers/clk/qcom/dispcc-sc7180.c
> index ab1a8d419863..d7e37fbbe87e 100644
> --- a/drivers/clk/qcom/dispcc-sc7180.c
> +++ b/drivers/clk/qcom/dispcc-sc7180.c
> @@ -17,6 +17,7 @@
>  #include "clk-regmap-divider.h"
>  #include "common.h"
>  #include "gdsc.h"
> +#include "reset.h"
>  
>  enum {
>  	P_BI_TCXO,
> @@ -636,6 +637,11 @@ static struct gdsc mdss_gdsc = {
>  	.flags = HW_CTRL,
>  };
>  
> +static const struct qcom_reset_map disp_cc_sc7180_resets[] = {
> +	[DISP_CC_MDSS_CORE_BCR] = { 0x2000 },
> +	[DISP_CC_MDSS_RSCC_BCR] = { 0x4000 },
> +};
> +
>  static struct gdsc *disp_cc_sc7180_gdscs[] = {
>  	[MDSS_GDSC] = &mdss_gdsc,
>  };
> @@ -687,6 +693,8 @@ static const struct qcom_cc_desc disp_cc_sc7180_desc = {
>  	.config = &disp_cc_sc7180_regmap_config,
>  	.clks = disp_cc_sc7180_clocks,
>  	.num_clks = ARRAY_SIZE(disp_cc_sc7180_clocks),
> +	.resets = disp_cc_sc7180_resets,
> +	.num_resets = ARRAY_SIZE(disp_cc_sc7180_resets),
>  	.gdscs = disp_cc_sc7180_gdscs,
>  	.num_gdscs = ARRAY_SIZE(disp_cc_sc7180_gdscs),
>  };
> 

Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>

-- 
Thanks,
Taniya Das


