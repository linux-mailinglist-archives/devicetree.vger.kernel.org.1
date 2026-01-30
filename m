Return-Path: <devicetree+bounces-261216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iN0fEcOlfGnCOAIAu9opvQ
	(envelope-from <devicetree+bounces-261216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:36:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1517BA935
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:36:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C258A3044819
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 175EB378D7C;
	Fri, 30 Jan 2026 12:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OHL/mtrW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hp+9EMU+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CF937105B
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769776495; cv=none; b=N02NFr41bnfAnZfjToKBYONkPvg9vN1w2OY+ViWwqC/CZzODyuUHPsb51Ay2YzPu4+78X7vf4z/94V1RvL6lVDS54qffmHdamUNikCnc0Iy9jshcaS361XzX5PrqwOXB8t52YwQvnFfodGCU8RLQcDBdQAb7e8wi+dufraOKFCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769776495; c=relaxed/simple;
	bh=9bVtYDJ82LcVsDRivF5w5HY9lRNo++pZxqNM35eQX/4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wqm0eMelRLGPlWKsbkEGo57IB2s5aWotb8n2ln8HWgm6zA0h2YNY2wU95FBFE08ZstIuMaW2ves9tCkCgs0NSQoxeKDBDnspdt82XmPgJ8JCZX63D/SKZpEdrbFX9zPPqEvaC2ybO0364vn71jCg4T/L9fdvsAIYslAAgzV4AYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OHL/mtrW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hp+9EMU+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UAHa3T1022754
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:34:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ul7akGCgjo+5jjsS/coxz7CBPgHvputuCOrKBFbRED4=; b=OHL/mtrW/xwJLnZy
	D/HGDOWVCMls3K5aArXt+HFtIo3hS8M1gD4bvGfg57VzNQKJ7//Mlg4SorR++++t
	zsPQ0SW4yGxY+mpaHVkTy3dubtnecmO82cHbAtf0EH0KE3ZvobgX3i9MgutczUmu
	5IfnEvfLtvvYOSJa83wWXy9OsCnmdLi8ngQt70TjKBXvXGlqXlkRFmXbmF/sXxlb
	+eCoJLB0xDWGT3N1DSACqBOJiGvBZ6w572OddSRqiFNEZD9ahtl7uVmUqinIpKR+
	ahg3JZLWMKA3tCzt/CyU1505hZOXQFayr2klLFf3uEo1+4584dIaK9CCRC1pDJvU
	qp/5+g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0e3kahp8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:34:52 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70cb31bcdso50264685a.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 04:34:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769776492; x=1770381292; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ul7akGCgjo+5jjsS/coxz7CBPgHvputuCOrKBFbRED4=;
        b=Hp+9EMU+ec6QaFullTwYvYSxXdy4uJUKxnLH+uKu4xXiavNRyHWsD4s2knDWvGFuSI
         KYafxOGyXID4pcHVAUFTMOUIFCEx1YZQt31wwltCdJYAfYbjRnwiyjh4Y+22eCZiWevn
         uM8bM4KjVkR/dLMRcksmdIpyooDKq00xSlf0dUy1tthqcW1vIId8oVgLLwB4lhtwlUiw
         k1Uh0+dzP+4nPoN2ytebunesNckDgdK5VOuO9h2llgPAfIQ66gphO8rN9gxB1YQNFR5P
         B6FfMh2bLeH1AZIc2omDpT5O/kweMvUZQfxq97LkidFa16frpOfAhMySu2upaeKZnJ7h
         8b+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769776492; x=1770381292;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ul7akGCgjo+5jjsS/coxz7CBPgHvputuCOrKBFbRED4=;
        b=kdIdbUtD928eqE6bseazq/4efYX2wb8td12egsijdA3KGvQVlaNPO953UYLFuKBwJO
         Vg2RFd7uGUrPo+31YhfFN3y8lzE14kEtKhm6fgA0+RyrYQ+OzWlJJOxL/QnCoQuAFqbW
         jP3m1nEzGGFKMcW1jNTshcUjSlgVY1RLVcStlfJ71RUZFsmW/CVmD4JyLWSfcBsEoMn+
         wM4Mjh+79yADenEXBuZflyExK0AgyM6+Y2+/Ah+j7QZjvuo7nRY6Tw58PuFukSvzZu/l
         nQ+rDzsAQF/96CyVXsDIaj6cVDHBgmC+2LP3+s+NXoa5Fk4Q7rZ26H8q7UGNjScGgizq
         b3Lg==
X-Forwarded-Encrypted: i=1; AJvYcCVFU5MpPQC/uaP5I3xQP3toS44uUMXDiISYxaOO8X00XPmcJekwzhY4MjKb4bFbcI57rCCQc82ivtA6@vger.kernel.org
X-Gm-Message-State: AOJu0YwzaiIHY8rV68vqYTaLKwoURsvJEL7WSPpHUV88fxG1fPFtHQj7
	geViorEtdh5gk+nRac9yjH5XWTJu3fRMgGZ6I46ULyqFzQNw966fmlOFZeG/K73xszywTUmz9OY
	L2BuWoiU6kxHJ8swL7og3ry+S53QnzOSR0ZKJr23I8wS8aDnDZxBd32kNozc9EEkh
X-Gm-Gg: AZuq6aKQBSHn4l4Zskh5qM7AQkDQrvgDCVTyQ+zwdUKmXmWOeTzfDVYICxvsS3YC6pJ
	qEQY4x78IXiPkOLe2HjZbuNUYbCv/OUR+VY//drhEe0HD2rB6THk6UbrWDBFfoeuVbeFSGx/oCm
	95Nn9XIdWFuftEeQXSxPdo80BAD9UNPaBWfnfC1QM9Kow6ZdUoXgCxoaKISzZZU7+LNz8k28u5R
	zmVpj90xzCxsMWuqPZQVZj7ltFImdrWZxh2dvpqwywENT5iOrin8c+jgAdkrGSD9Dk8tZN05/9I
	+ek2RdpVHsEYsS/hbKNlLmI4rZuCmAH9rb+8Fbv2AMcknXtVyyMNxTeNvGIkz9R37nskHqN2Zzw
	YJrurT9LbDU6s8zrY5Lj//85xHkzMoZ0096rWtnVCKI10B8AozPnkZ41/oCMI0/lX5Hg=
X-Received: by 2002:a05:620a:4005:b0:8b2:e704:55fe with SMTP id af79cd13be357-8c9eb33fba1mr291464285a.10.1769776491887;
        Fri, 30 Jan 2026 04:34:51 -0800 (PST)
X-Received: by 2002:a05:620a:4005:b0:8b2:e704:55fe with SMTP id af79cd13be357-8c9eb33fba1mr291461085a.10.1769776491417;
        Fri, 30 Jan 2026 04:34:51 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1c5b38sm410530866b.53.2026.01.30.04.34.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 04:34:50 -0800 (PST)
Message-ID: <8e410852-37f2-452b-b851-19b7c4222727@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 13:34:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] i2c: qcom-geni: Enable I2C on SA8255p Qualcomm
 platforms
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-13-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112104722.591521-13-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=VI3QXtPX c=1 sm=1 tr=0 ts=697ca56c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_xJWht7u3x9PW1fQUNQA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: G-IIWkH6wsbXnITF8hKDA6V9OZYQLNV_
X-Proofpoint-ORIG-GUID: G-IIWkH6wsbXnITF8hKDA6V9OZYQLNV_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDEwMiBTYWx0ZWRfX3PXeRnXpK5aJ
 O4cRLkWtDtelQbnJjw2flmx140bAwOE5VF1U385E1QCgjQCzNrPjaKn9xC+1Ial8SsRQyzVdtS2
 fLDCzpGHM3yE0g0hOUSr+1yszLDL+Chf4ZdGbZdKIaYdYRqFF+0VtfIkg9DIMtuS31fofkH/W28
 mNUuoGSd8a5XlwEputB7JfHcMEKDtNIFGNUmy9PE/IC6hI9Sg9K7T5r3DWLt8Ti7gwCRSyV33hz
 0DnelV2oESyS5/IHzs3/nq89IxsUHaIt5q0DubRGM33ykHN6khB0GnyY0wffaDjSyLiC4D88Uvk
 6b1zD03pdj2oRtJ+f8mCidE0Gkgu8r3+1gWdso0/EMWBgSilJjwlwhGxlBwu5BupTrCFkG19wMj
 ykYpwao4Yt9gxJrfjyfnST4WcJ5SvPn49qhu1/l9+Tl8Adl+eRW74I6BYrQ5+AknfYy1dKmLPaS
 AOi7aMVKCfTb1xLN0wA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300102
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261216-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E1517BA935
X-Rspamd-Action: no action

On 1/12/26 11:47 AM, Praveen Talari wrote:
> The Qualcomm automotive SA8255p SoC relies on firmware to configure
> platform resources, including clocks, interconnects and TLMM.
> The driver requests resources operations over SCMI using power
> and performance protocols.
> 
> The SCMI power protocol enables or disables resources like clocks,
> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
> such as resume/suspend, to control power on/off.
> 
> The SCMI performance protocol manages I2C frequency, with each
> frequency rate represented by a performance level. The driver uses
> geni_se_set_perf_opp() API to request the desired frequency rate..
> 
> As part of geni_se_set_perf_opp(), the OPP for the requested frequency
> is obtained using dev_pm_opp_find_freq_floor() and the performance
> level is set using dev_pm_opp_set_opp().
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

[...]

> +static const struct geni_i2c_desc sa8255p_geni_i2c = {
> +	.resources_init = geni_se_domain_attach,
> +	.set_rate = geni_se_set_perf_opp,

This means, on SCMI devices you won't don't the vote on the POWER
domain (or PERF for that matter) and switch the GPIOs to a _suspend
state - is that by design?

Konrad

