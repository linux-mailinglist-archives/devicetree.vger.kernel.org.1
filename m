Return-Path: <devicetree+bounces-262899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKg5OcJahGl92gMAu9opvQ
	(envelope-from <devicetree+bounces-262899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:54:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B35CF018F
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:54:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 059FA3005309
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 08:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B75361658;
	Thu,  5 Feb 2026 08:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ki0Yfm2j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="al0HOZAW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56433195FB
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 08:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281607; cv=none; b=rTWkaeQWmItatNcFHzXnfEqITE0bWuHk5FI/wQ8WoGaeXRT6ID0WtbMEpjxKVJhNeE60DDHTWldLdgmClXazDKGZ2Sd1CD9eyuNL7PZi6x9Wz38LKiPNoplkCpu07W7p5Eh6IaSowtDF8uacevTQ4HdITuFUnaKacNMRbu5+XDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281607; c=relaxed/simple;
	bh=jeRxW6NvArbsNamVoyEoTUZu2w80losl5bhdi2hXAM8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JT1x7K4WnzP0TIaDASKZVNJvbluvg3Kav4yoOQCjVL2nZgtI910nh5/SL/OJCRSzOO8RhxiWPtVzlHWLO3XwaAmdReGszteQT4szv1Mk8dyPhMyIV4EaO8fGffTrQ/gHAIX0Hd4jzCOnbzfQLZPsHFcP0CgxsdFPHbxQE010rpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ki0Yfm2j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=al0HOZAW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153dl6O3031034
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 08:53:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bPSSGnCIlHvKiwP/3XZmhF9BeEla2vdg3S2YBYcvhTE=; b=ki0Yfm2jmU9Z+59U
	mkc6Jqrb9mTZI+dczY+MENE1MYRBlATcXVndj65uAkkG/Sxyr5TRgpigHWXLjXgK
	PhsmLA5agdBnXBzG+VvZ4FyLLVTiX5x/We45YqbvR4ksCkLzEV/MFsR6lm/keCWH
	OOBO+whoyR1bvcugOD+k/i3Uq/+RMOKtE+h9R6Dk7qwEb96P7Z6sunF4IQpgHD+X
	ifiGnsUv5jKst5LGjg/1Mc46Nd/hQTcygJdjKSkdBRnaHEwrBu1396XO6EHBqVTt
	xp1Ol5a6GY/o54p/EupbXr6Ysdsrq1As8ZWnxpponUiH5kxiAAFR8KKB7sZA7WTw
	bMs4ZA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4a7tjgdw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 08:53:26 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89496f5086dso2918736d6.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 00:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770281605; x=1770886405; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bPSSGnCIlHvKiwP/3XZmhF9BeEla2vdg3S2YBYcvhTE=;
        b=al0HOZAWOEb2HwqeA39MXdkPKEwua/B0hfuxVQMObhJlzYgAwKJ5ECPYTgoaQzIFYA
         ujFHgf4kq77G9uyZQmTBtLT7a+nZAUDv37pARPoNO7S7gjmHrLtA5EvH/602xb/gNCRx
         OIAlRldFji50ui2EIq7yXVhce7UZU89F26iGGuJulA1Lv+LhfZM/Zqu0NmNN97Ha7Un6
         Gg37K0cICXe+lao3/wDJogdhRCsmiLM2qbci22Cy/nFlBYcR1+PY/7fM2c3lU42a2u36
         e6dbUPcD11kMR6xoNVvyyrpvk46QmMN1+e0lIpfUC44EnVYAnfVulhbKd/Cb4hDSK1Ir
         M/xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770281605; x=1770886405;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bPSSGnCIlHvKiwP/3XZmhF9BeEla2vdg3S2YBYcvhTE=;
        b=cVmIpPL/VcGLRPBAd6kZda5mEIDyAo57KDoQMlxuLVv4RAavzYgZOGo7SmfLJDoLCN
         1sTbwjYjXwZ9lqQgULaSAMT2t6WTb3w8mjvul3xeyOQH4CjNXLou0iJIGkZ0y4tmPK61
         q30btM4lAAwqnkZzBnKLucJZ8rkfzE4Hug5ozb6dx7XhDjD64kjsLOq6G3QayiCOmvTM
         8P8rkmd73f+eLTpzVn4mhMH3gNrogV+ji2g5nIj6HlDC7XabX6AuFW0VWWDCemTuKUXb
         Q6zROoMcwfQlW1ynibq4PwzP2wf+QpIdzdee7qL3/PcHvL1TGQupwIPkEKq24Q8dBQPx
         zjDg==
X-Forwarded-Encrypted: i=1; AJvYcCWhKjlrFvqQl8GYN+TDDroB/2DxGOCbw0oypGxYtWGxR06T6yi5gDzeM8PnNA3Da72P3ZtOSFJgklFv@vger.kernel.org
X-Gm-Message-State: AOJu0YwdexUAFCZK123ah+pZBSpYKXAI722yn7zPnmD8rhJTqqbexUH0
	z3lYIusPn0ji/cvZgeDBhwXj9bp/gicaqHTIV3pcVO53eOrptNG1cdOe+ZlS5uiAolbJKniyjCx
	mC3hqkcIVQ25GlN2y5DAzR7kNoW7Y7E4AgP0zHJaC2uWjh+8h2MVLWa5Qv6HSMFsD
X-Gm-Gg: AZuq6aKLT/Dt64rCvaQ9t8gwEcWvAFTTPxHcJScfjvHq6V2zkfhFti8W/ntVGdS5tq2
	/1+gZGw9ipY117BFM9fQ1Z3HJt2xBPMUa69pNErAmu7qY8mqVSnYrK031//1OFrdJ/i5izH1ubm
	th5QH1xD2RnPzaKcHgBjycXc0hgdnfQagt3WsgKs/ojscu1g3VfZg/AOb6546YwIEYG5QS0JLYr
	Aa0v1McklNb8tEpgGjnc6/Z83Rko9c3tUmRfF/q4D/OiMkfho83odICFqAk9Wf7xmgdY2CaXykk
	ttMpc8maOzg5eyR8ebqyBo3DAeTz2rJtkuq2y8xOv+TKaUhWtOjE3Q9dj1LwJKy2RnbZ25VQB4I
	0AAmosyQuIsZY0alcl1tljNj1NEtoE8GfEsf/p7LYafWOVppeb5Y2AgjNWi8q1hmF4hQ=
X-Received: by 2002:a05:6214:4e90:b0:894:9d32:6160 with SMTP id 6a1803df08f44-895245ac304mr43939616d6.0.1770281605174;
        Thu, 05 Feb 2026 00:53:25 -0800 (PST)
X-Received: by 2002:a05:6214:4e90:b0:894:9d32:6160 with SMTP id 6a1803df08f44-895245ac304mr43939506d6.0.1770281604769;
        Thu, 05 Feb 2026 00:53:24 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65949fd80a7sm1876774a12.14.2026.02.05.00.53.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 00:53:24 -0800 (PST)
Message-ID: <aa0e8a75-969a-423c-a94f-fd8098fbeb48@oss.qualcomm.com>
Date: Thu, 5 Feb 2026 09:53:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: qcom,sm8450-lpass-lpi: add
 QCS8300 LPASS LPI
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        andersson@kernel.org
Cc: linusw@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, srini@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260204174237.2906-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260204174237.2906-2-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260204174237.2906-2-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: vvHIFHsdHKOT25MRHlzLuHH_3cdV9vhG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2MyBTYWx0ZWRfXxFt3I+8Lc17u
 FS8JU+SFrMSG1nkFP9VrGRj5CsRlwsKsebS1xyIQUcigS7NrS2QgWAMe+jMdLnpnNLXFbqzejGI
 RrrkcIphKOWFR5++3XmlIw+NNvpZlcMNyOC3U1tMidmHQKlgJyKJxmx2qhHkEF4kHsMDq1vAHYP
 /pQmw73r8ihoX4HHKKJzaIR6pZdzv4Ze74A3CNmAyU+3oJlyDO/AOYf2+LcNxIMOLaZZUq/mO+/
 HzJMjtrCzaTWX1HZXtXTms2hCtusTgtZ5N+vkNjCGcSxdOAa7uaoj0cw73R6iYC90PS+Hl3bFo6
 7iInP+TPkgirqUoHB/xCtiFlJenwOmMsTAYQGsFdHRhv7kBtrgv2tfHQISfMiZuGLCo3Qxwe0Hw
 l47eu7oqgmLoulwAdTmaup7oOgt+JgHsRxegvXbTXk0cvsSyd58ROtsCXbQk6zCc26ghr2kyZod
 XhSEB7iwJrhAUvLSwPw==
X-Proofpoint-GUID: vvHIFHsdHKOT25MRHlzLuHH_3cdV9vhG
X-Authority-Analysis: v=2.4 cv=QaVrf8bv c=1 sm=1 tr=0 ts=69845a86 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=oKlzPlN8YpF2C1mTYpIA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262899-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1B35CF018F
X-Rspamd-Action: no action

On 2/4/26 6:42 PM, Srinivas Kandagatla wrote:
> Document the Qualcomm QCS8300 SoC Low Power Audio SubSystem Low Power
> Island (LPASS LPI) pin controller, compatible with earlier SM8450 model.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  .../bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml     | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
> index e7565592da86..c81038320c35 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
> @@ -15,7 +15,11 @@ description:
>  
>  properties:
>    compatible:
> -    const: qcom,sm8450-lpass-lpi-pinctrl
> +    oneOf:
> +      - const: qcom,sm8450-lpass-lpi-pinctrl
> +      - items:
> +          - const: qcom,qcs8300-lpass-lpi-pinctrl
> +          - const: qcom,sm8450-lpass-lpi-pinctrl

This patch conflicts with 

https://lore.kernel.org/linux-arm-msm/20260127105511.3917491-1-mohammad.rafi.shaik@oss.qualcomm.com/

Could you please consolidate the efforts?

Konrad

