Return-Path: <devicetree+bounces-265870-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGlcGqM+k2kg2wEAu9opvQ
	(envelope-from <devicetree+bounces-265870-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:58:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C86145D90
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:58:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AE003018BF5
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760733321DC;
	Mon, 16 Feb 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S7D43Ov9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kY2R+IpL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8A63314DB
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 15:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771257453; cv=none; b=GfFR16qmoyYN2UewiBID+V47LifvN+gxG2tdt87QPtn/aOvbMpPQ19QELun5veLM3Yh2YfL3GEz82ZfiMH56Q6LgoWe67x0T0g3OvnYJZbEtK+To1avsMiv29+S8e2PMRYGwySkzlbXH6NS33f6FIrEODjGcP+64eUvUt7s5Z8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771257453; c=relaxed/simple;
	bh=oeRmS+RnbI7iajNHi4vkTeNb1F6SCKI0ecOw1bP3KVM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e8+kOLV+f39c/NoghzmJmos9FNrCUTJlgACgLbogxDWz0a0MLhsyG3C0wibnwa3Em6RWjVSLQrcW8yLAZdM7eXcNuHyIDyDqg3y8KAoXtp7B+mm41d2MOU77OqA+w/EO6F76VQ5PUUb3QzE+BfDrfWZsf8NUKoQrMwdw1ep87zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S7D43Ov9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kY2R+IpL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GFkWDN982440
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 15:57:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HDqYjUR+aQMkdEFghyjdfYjEhiYd5etbRbmhTWvDQso=; b=S7D43Ov9dvx/yiuL
	GBSnqyr696b3Vf1Nsxu4WONbIT167QqYS3hsbJFdEz4eg/uZv4UxipLmDyhJ7xYG
	lwqjJfZwSg0xn+7lT0xXvlcbV4qAjvKFfAKTQuEs2BtbxogEzjhTrfPX9yDKqEd+
	WVczDO0ybnRgqIp1DDR8NrieZyCBe1x0oRyl3cOtwVnvO8U/Sua9Ub+izuvPq/3y
	Wu5MaTCmgapBS7fJ1T6DMnoMyC6dYxUEeOVhAQ/zpV2MfaJWfO3cWMaRxSISWDyE
	xWeDGNNJCAThLEPGUFKAqbc8DPA9zJwuqN3NiY8/KfUUj+sR8+6HGhlL4E6BBWOj
	7TrkKQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc662r0wf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 15:57:30 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70cb31bcdso228415085a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 07:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771257450; x=1771862250; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HDqYjUR+aQMkdEFghyjdfYjEhiYd5etbRbmhTWvDQso=;
        b=kY2R+IpLfoDQuAQezcgscFjakyx9mCWUWeUg5ZXCpl71PwLfSVrHLkrorpirkXF399
         bj130rPDJDMv7NLYt5SkuribU0SSKQKXWwQwi+v2kSDSvRUZMXLRkepftJ+I9CcYLWoe
         kJ5/RsFtAGz0bKTE6sNEFP0bvvVRcfz9J9vC6TvL0C5l18KGuzsZ5drtX15NZ/mRHH2h
         tQ8oS7Xg4ciUZFxHkwsMH5xr9v398gF634dk8cfI1pfGGyUF0W3Sbaldam3ZhzU9FEgV
         jPKCP7sklzwKK3jxj6/aKlBofoIz6gkNISWamIXcgOCQi0KSa/XrfsIBfogjNSQxoNyU
         bvnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771257450; x=1771862250;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HDqYjUR+aQMkdEFghyjdfYjEhiYd5etbRbmhTWvDQso=;
        b=HiEMSKfXQJKF5q4s5MzdhOr2v/03aFobtjyKWgwzFVdBtcIQGSfknT9wf1uCbYTc0F
         z7rDNwuLSZ8S3QmLJDh/l5CijiVO7/ug7lQs9XNIiRjsdK7gL5ntk5iIWA0UQwKzt6Sy
         PvC8Feu/FZZPDngRJMbq36qkrWjOuI+ao/XsRYgeuO9AJQK0/dwqNWzLt1DIHiQ4TQXp
         +ZoAQMPRVGZq48pcbCZG5Doh2fZkRNLVPUiIWEcHe1UMXsnpQVUy6C7bdj+4U8FsHjBA
         cgTrEiQD8umGR674QUoan9JhD+6oSbjg81dRZh2iTVW36FQ0DmO1iojKysiCBB94Eek3
         LIow==
X-Forwarded-Encrypted: i=1; AJvYcCXmqRdntd+8LQCkI2kcMY2MOv68YvgqExuf73katA0rz/fJYv+I4hT7Ypc0i+vZ6VlVS9MdNRbq43Ht@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3Kyg2u+OWVeNkRiLbSLH9JecmK+KP7ahgNB80bYJbZtKNq0VR
	tToGnWxac2LM3rKMYcR7SUTAXFYCH59Jno5W+aTSbVgZNcyiaBypkTN7AfGkeBju+QatqXjgdGr
	5Qs76vhjuO0nVu9zWm7TuV2SldhcpOvPwO3n+ACZARKGgDHfyiWFgnJlV0WINs0DH
X-Gm-Gg: AZuq6aLk5Pmjk8cj8y6YGt57YxNL2j4buitctnq5JPvW8I1aQYNUDxWGGt8cuW/OmoR
	DjfnFYUCxtuGMeLjd/KdQzU10Ir3sGSwf6fbJiGGoALAFcqeWW5+wjXmRb69rVQaUxTL3ALxOJI
	+QyilHTe2W2a4KDaAUXOFS7plBaWVKxyyU5FmLloS8r6OyJTL44Kw1KA1aovBQ2SwX8kOSiJdYu
	1lAEBl3OH26JSZpjsfeOdD26tW2PizUe1fJryFnwmQ4kEj4PTK6kRRgsBxYXRQc+QckVYOASqgY
	sv0Y1/qcaqUOKmWOSO5GGFgDrFlRI48Zf5dGFLB/FjlUHmsCzGlSUPn+FJTu7WZoogP6OttJXAf
	5sG0nRwVYo/Nhn1k9SsNk1g5JQaJLCvn8SbEmJxibf4kLgF9//xbPmqo/5zt/QxGsknVfIH6Hik
	P766s=
X-Received: by 2002:a05:620a:45a3:b0:8b2:e177:fb18 with SMTP id af79cd13be357-8cb408fb864mr1126017585a.9.1771257449917;
        Mon, 16 Feb 2026 07:57:29 -0800 (PST)
X-Received: by 2002:a05:620a:45a3:b0:8b2:e177:fb18 with SMTP id af79cd13be357-8cb408fb864mr1126014785a.9.1771257449474;
        Mon, 16 Feb 2026 07:57:29 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad29d571sm1914625a12.11.2026.02.16.07.57.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 07:57:29 -0800 (PST)
Message-ID: <0f3fec98-4d58-4197-82e4-41480066d42b@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 16:57:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] clk: qcom: Add support for Global clock controller
 on Eliza
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
 <20260216-eliza-clocks-v3-5-8afc5a7e3a98@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260216-eliza-clocks-v3-5-8afc5a7e3a98@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEzNiBTYWx0ZWRfX8ZWXSxBdWRAH
 gDcYcJ35IWb7a7CLbi/15sg50RD+v5Jo1tKoExFwqoy2ViFkETAGtvR3uo/38TUh6iRliVEIbjt
 /zRLUjgg89ILgSXFCwhN8rnxj4i5V5zLvF3SyGJhS3r3wG5+5zJO6QMPMtzfLKhTfJT9zmz2RkF
 myiGefq7dqnNSxwroYNGiIKEFoQJx1azAvme/iTfnJx0EAFnTIPnpo4an9Y+y3liJbFfodrNVis
 qRHfxAT1RYvbrNQoDDBgEY/Z1+4kQbUJa/Xyj/G5BaGhy6uiFw2anz52cxqUAgpOIhV1POFTT3U
 ZcHbnRBT9cshyzI9yUnOib9pgsYGe2c5j6mzmofNZn1FLzTCuIfre+bQQkeKN5gLbNWRvHaoBgh
 muMEpqm98wsPKs5x6yxNKjWMJygxIP85dAJOue6ATByYoLLdHc5pVfWT8XpI+mWbrEzW28u9big
 X5XWpjTiSMivr4GoqZg==
X-Authority-Analysis: v=2.4 cv=Y6b1cxeN c=1 sm=1 tr=0 ts=69933e6a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=F7eGajQwVCTwq7oO_cwA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: Ox1eqeNSSMLyo7YLPWOWbTQyuKvH_I0l
X-Proofpoint-ORIG-GUID: Ox1eqeNSSMLyo7YLPWOWbTQyuKvH_I0l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_05,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160136
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265870-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C5C86145D90
X-Rspamd-Action: no action

On 2/16/26 2:43 PM, Abel Vesa wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add support for Global clock controller for Eliza Qualcomm SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Do we need force_mem_on on UFS clocks?

Konrad

