Return-Path: <devicetree+bounces-267424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKRiHtVYnGmzEgQAu9opvQ
	(envelope-from <devicetree+bounces-267424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:40:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D0225177159
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:40:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62BDC3063B45
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 547F32264A3;
	Mon, 23 Feb 2026 13:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gBdNugef";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cR4R7AW5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A0F225775
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854006; cv=none; b=DKEKv6AQBnlCBn+lZLjar8gR65hC88fOk4kHn9iqKXqdA3JRQ8ZToApv7BpqhDdkYpSaK4JD37VWt6PSyn84kyvw6LPtZuCStZp/NSyhaLC2gnEbdHMKduHhYpiY1B3mNu3k16P3ehAk2l+Er/BYWzYl2OjQRTsc1GSwptG8wMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854006; c=relaxed/simple;
	bh=XVY/teWmIRKG0bhadE1kKsMkinPkfohwJbkc0JjNgCo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hXSYhBs3DRVsMNtfCviU58QeusNmp3zCQnbisqPmECPVF6s1QbmK2TFDgvwyv3ypAymDu0ThzB4FOHeuMFbcy+WsQvgrj1WfCoorh0jtIkSC1g/5IYauCdJAjUjzSMjzHiqfU7oaWnboF8psA0fxnEjRh9TynOdvleB50dQ1xcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gBdNugef; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cR4R7AW5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NAYM0l561728
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G4/QIr5UHiT1flGxYWTgnSP6v9y0V/IaNeyzeH6czwU=; b=gBdNugef63A+9kLN
	Oxq9N29XlyfrqdScFUaLWevZ/kSIj6joEHbgXo1oI2+SK+A2NMlU5Jwe5CB5EV2R
	uvdiWyfGPUB86LZQRznWfibKdjsYNkP5I4NhjTf4ERpNtkVdHdx/+yZRV7E8O0p+
	dc7tqILIJRD1PuB23QfamUTpnwgdCyhbK/ChnLw5iTSWPz50rDP/Lv59L3TIb1eD
	8zp55gBRD5uYae5t+PmMN1A4AgQgjjjSnhrqRjdyi0QGjIUWmhi1O36ttQF//7+b
	X/i22IdDzn3HagI71DVVXD/RiTJnS+ZON6biqw7t1XEAHSxqNNPlUsBMPo/U4+Oy
	fomefg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn8r8fmq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:03 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-354be486779so20483773a91.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771854002; x=1772458802; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G4/QIr5UHiT1flGxYWTgnSP6v9y0V/IaNeyzeH6czwU=;
        b=cR4R7AW56DRUxoctXuz4walS6+e7pgUfVUTuoj/SE1e3iGj5HAqId+c0srwEbyXdm8
         oze/aHM3WpTiYPoE8Iz5gVyvk3FbAYj+1IkVB5VL28mD50QkOz4blWXC06Wyln+htHDp
         Qg/7iHPHxliiy0mqbAP4cFBTXaIeimMWMlRc4crnkqhTrsZw7IclCdDMH4colxNFkSLr
         lFFx7cn7/h0xZSQAZ3Kbl0a88tTSZ9Ngy6NLP3/muHHHL8pvmLKnfvHOil+/SpSyDn21
         zBj5JTKLa0ku2AboTuiKAaj+EVA1zKubpQTRu5eykLG2FpZRGvKGRbX69DZWcyjXwjEi
         /BcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771854002; x=1772458802;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G4/QIr5UHiT1flGxYWTgnSP6v9y0V/IaNeyzeH6czwU=;
        b=xMBCSvTgDgXhqZ5zp3B3CWFrXee/qOZor75rCrZoP8Gity60r8M2IkG7buNJLNWVHT
         nPbEsRbp4i92C5v3b7HaISSzqLYgh7sTkTI5UjeZB1VHM2U6i7dIDyk79ArVPJF3QR11
         QaXkSYobsaq6Irlcldp5e23hpH1BSKuy663UMAd1s51X960o86w+awGRul4anVaneiBf
         BUqHKpnoqdVQo+rqZFSNz/DisLE4nBzIunXSp638RLfKcVgH1EAqYl2DnnWHXj47ZXd6
         lweuHboMdf+U2m805U+2HvOQQssr5CZXvsMU51bYq9X8BqHvqFrjrFEFIvxg+G1veyUJ
         0arg==
X-Forwarded-Encrypted: i=1; AJvYcCWEueTLUqDTwHkTA8cvUj9lQ4fJbzDzAsR+De9tz5cr27uxLsII4A2dwsJr08hcJabkguk5A8aTz9u0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4i7ehdGF/O8gRSo27MtL/wweaU1/OU3erEhzTswXzEKotYw/W
	sRXdXKj/gJYfBmcRM4VYo3bkw4KM+VcNL+eaNatZhNqzJWDQADnO4f5wHwgBWJZtyon/uRM701f
	W0YNUjxO62dVpxaoT8AzBqZwKVb53AhGF5XV+3BpZqxaom91aBaFqWWdg3d1XKgFG
X-Gm-Gg: ATEYQzwoVfgpATMIJTSjfgta1aPGrJT4mD4ZXi4y9wOKzeFrfKPU8FqSY761Wn0XN9I
	m6t3aPTRYxTB1gtzanlRkL01ZVYN+dU6mjApYgpmnc7uKyDhSUqdi6uidv0I9fZrs5EtmkUXqKU
	rD7K5z//P6C1O9VWDkmRHJNYOTbCTMkwJBzTEUm6L1YBSkH0O057t8Y+ESO1zc3jHvlZ0fgLNlC
	L4AEqToEHSu5ElpGieGC0kk7P+bbXYfZHJUIfu2k/QFqiRMj4z5VvuTEhW3OhRwOoO202XgJgux
	vGcSGEVTfNoZ9dAzsFoSS5u4vXzmBU/v76f6lKjT14rfU8tV79hOnA1MeZfvkJtZ6DZeC2wZQpU
	gZ4FT94BpPdpzctLUJ+lYoBzuozjri0rtJ23rpH8O5rHYH9xb9/76YA==
X-Received: by 2002:a17:90b:1d82:b0:354:c7f8:6d7b with SMTP id 98e67ed59e1d1-358ae8d0700mr7338175a91.27.1771854002244;
        Mon, 23 Feb 2026 05:40:02 -0800 (PST)
X-Received: by 2002:a17:90b:1d82:b0:354:c7f8:6d7b with SMTP id 98e67ed59e1d1-358ae8d0700mr7338136a91.27.1771854001684;
        Mon, 23 Feb 2026 05:40:01 -0800 (PST)
Received: from [192.168.1.5] ([49.204.105.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358a1b63088sm7338194a91.2.2026.02.23.05.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 05:40:01 -0800 (PST)
Message-ID: <9b49a776-a65b-4210-b335-627a296049a3@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 19:09:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/13] soc: qcom: geni-se: Add resources
 activation/deactivation helpers
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
 <20260206174112.4149893-6-praveen.talari@oss.qualcomm.com>
 <05340972-2013-45b6-801c-7e52fe48cef0@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <05340972-2013-45b6-801c-7e52fe48cef0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: nvvdYROTE5-QzlNL2zMt16YkbTCkRa1A
X-Authority-Analysis: v=2.4 cv=V7twEOni c=1 sm=1 tr=0 ts=699c58b3 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nVOepZjDv8C4mF6t9zHebw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=VriMNdUBh5tPIKgiUd4A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDExNyBTYWx0ZWRfX1t96t1thtGzg
 Tj/8gY01cCg0RuN/gsL+X0OwQTXQkIvFe8eFKqLfkTWnwGGiZ3czZuto3FABLPFCcWOs8ybC50B
 NKOMq15TaO54PiNm9z2akIT2aN8Est0kkQ8t7qFxcgr3iv6LK9Ceabpn22nIxPu/7Hi6uNoh7KV
 9kjPGhgUdx7sRFgBBHOeJuAOZZSqRAoi4sdiSAQMYRW44WQe9infLseWkhaOoZzsf8ThOaeZ832
 cVqJ9+8M61sxp/FHtEZ3y4e0m0odCBXwKKGpq4ciLO5BqyaXrDy4prmnyfzAuHZm17lrfvvQgAi
 /HJlcJQz54YUtXRGIeUkYmJwVr2yDYxWvOiUS1PuIaIxSpyDJ0zeg99JFl1oPvOmrld0hmcQDSS
 O5BNeCOHg1OlyWWmndgiM3retT3w1ksF6C2BZYuETmnklPBSCL59lP3rl/Sp4jsmfyruHGDNfd+
 fN+vcDQqKUBbbtRWAQg==
X-Proofpoint-GUID: nvvdYROTE5-QzlNL2zMt16YkbTCkRa1A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-267424-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D0225177159
X-Rspamd-Action: no action

Hi Konrad,

On 2/17/2026 5:32 PM, Konrad Dybcio wrote:
> On 2/6/26 6:41 PM, Praveen Talari wrote:
>> The GENI SE protocol drivers (I2C, SPI, UART) implement similar resource
>> activation/deactivation sequences independently, leading to code
>> duplication.
>>
>> Introduce geni_se_resources_activate()/geni_se_resources_deactivate() to
>> power on/off resources.The activate function enables ICC, clocks, and TLMM
>> whereas the deactivate function disables resources in reverse order
>> including OPP rate reset, clocks, ICC and TLMM.
>>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
>> v4 -> v5
>> Konrad
>> - updated return value as 0 for geni_se_resources_activate().
> 
> I would really like you to include that kerneldoc bit I mentioned it
> 
> https://lore.kernel.org/linux-arm-msm/ff9a2aa3-1b2b-4001-82ce-198c61a4b637@oss.qualcomm.com/

I hope the below works for you.

+/**
+ * geni_se_resources_activate() - Activate GENI SE device resources
+ * @se: Pointer to the geni_se structure
+ *
+ * Activates device resources for operation: enables interconnect, 
prepares clocks,
+ * and sets pin control to default state. Includes error cleanup. Skips 
ACPI devices.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int geni_se_resources_activate(struct geni_se *se)
+{
+       int ret;
+
+       if (has_acpi_companion(se->dev))
+               return 0;
+
+       ret = geni_icc_enable(se);
+       if (ret)
+               return ret;
+
+       ret = geni_se_clks_on(se);
+       if (ret)
+               goto out_icc_disable;
+
+       ret = pinctrl_pm_select_default_state(se->dev);
+       if (ret) {
+               geni_se_clks_off(se);
+               goto out_icc_disable;
+       }
+
+       if (se->has_opp && se->cur_rate)
+               ret = dev_pm_opp_set_rate(se->dev, se->cur_rate);
+
+       return ret;
+
+out_icc_disable:
+       geni_icc_disable(se);
+       return ret;
+}
+EXPORT_SYMBOL_GPL(geni_se_resources_activate);
+
  /**
   * geni_se_resources_init() - Initialize resources for a GENI SE device.
   * @se: Pointer to the geni_se structure representing the GENI SE device.
diff --git a/include/linux/soc/qcom/geni-se.h 
b/include/linux/soc/qcom/geni-se.h
index c182dd0f0bde..2f7aba4f89b3 100644
--- a/include/linux/soc/qcom/geni-se.h
+++ b/include/linux/soc/qcom/geni-se.h
@@ -65,6 +65,7 @@ struct geni_icc_path {
   * @clk_perf_tbl:      Table of clock frequency input to serial engine 
clock
   * @icc_paths:         Array of ICC paths for SE
   * @has_opp:           Indicates if OPP is supported
+ * @cur_rate:          Current clock rate of the serial engine
   */
  struct geni_se {
         void __iomem *base;
@@ -76,6 +77,7 @@ struct geni_se {
         unsigned long *clk_perf_tbl;
         struct geni_icc_path icc_paths[3];
         bool has_opp;
+       unsigned long cur_rate;
  };

Thanks,
Praveen Talari

> 
> Konrad


