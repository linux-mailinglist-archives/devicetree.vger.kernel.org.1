Return-Path: <devicetree+bounces-261208-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMEmBQGgfGlSOAIAu9opvQ
	(envelope-from <devicetree+bounces-261208-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:11:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD3CBA5AF
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:11:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2C3F63001CDB
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:11:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B595336F40D;
	Fri, 30 Jan 2026 12:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="osY1sV75";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OXb60wLt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F0D298CBC
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769775098; cv=none; b=k7EIeJgXKHM3eWZlkvqRwWyzMQ9nh3vrvCRvIiV3z+3wewJv7nbRrIpOr9n5WvSLJuxJgv+a5PhkXbypHjRltv5nqe+weWnNusC3K4AJmk6zOq+qqGgpo8qthrWQK/5fZ97Y8559pItj/znLl0XrnyWdUkPTyS+5spEU+GRhOa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769775098; c=relaxed/simple;
	bh=3GSdMKdwN+itJrF8aikP9IngQ/p6kcunKAal99y/xbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VPoDQZMr3uV8KSRQCRzK78aHmRz9PorMjcuFsA6YMwO6j0acM0BzuYMzoFYCrgYINcqFZtymeDG3UnvAhkBjd90vdc28JpM8qrbFvIJR+3wZzRG14p0h/9h0brR6k17uOJeAroTp4bykWbaan2bjNUIDvOhJ7A88KD+pXgm83Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=osY1sV75; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OXb60wLt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UB4YZl995888
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:11:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QML/ROFYsRa3wCAhgii1SBThLnaFW/W37txI0arbOqk=; b=osY1sV75QR7fChrV
	TH8jz7Dy7Gd2IniTB6Y1nuebWirl6RZZ1//eWy9troxKu2tQlsLPedyCxGixSd9W
	+HHKK9IAalpzmkf80s9OT8pJHDrshDXCDM5g1RRZydXO/L4Ik1dPMw3fNhSWdzXd
	sA3ZL10x4i0f/SXfJL+AFfpSGz28BAHqpG1gKtI9K9qb0GrCnw6zGhW0VHiW1O5T
	6pguIRaGB9SgWXxzWXWq5obcalM9NiPJlngeHtWDhnWC1Ifm4OK/7jG7TBN0IQ1B
	EhSo2VG/XJSGgMiPBSw3QzsRfqo/SrEnHuUmIyVBIrWvSJGnDneYHhEk0lZf/y4g
	Eu3D4A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0bvvk10u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 12:11:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c536c9d2f7so17107385a.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 04:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769775096; x=1770379896; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QML/ROFYsRa3wCAhgii1SBThLnaFW/W37txI0arbOqk=;
        b=OXb60wLtZI+ZY1iHme9ktWazfZXKkA3fQnRCde8NogaSvKlrjxJzxny0dufv0bJWyM
         wVfIfkYhCeJgDe2u0vBUL9J1bzDDlxXkxzIN2i1oSOH03f8DRHUWSbPFzItMt8RnvSgP
         QxXcKMkHb3ofxcwGn6X4kNxRgElvMNbh3BclUW3cDyuE/OCRGeFsSf0s8sJ+LCIXY3rr
         8xX5bL11VVmuBPCJ7hk6d/7Ll2k0cdBTM4OphuNaBuXMZZFIrR34wJhAqLpXz16HU+Fd
         0eFaMFVrvZA2pUVa8I/nCDoUJvtSrZfIHUzGRzLlUkcuZv+kkC7JRmfWE45/rMGrPe8B
         700g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769775096; x=1770379896;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QML/ROFYsRa3wCAhgii1SBThLnaFW/W37txI0arbOqk=;
        b=nX3OoBvABGQ49E+DY1+Xs10JUjHCDyj6w010wYAsqOAat7hGdc0irwYwoQVKuMUWv8
         pFp0sJj6y28YY/Lvk01ebpDtbN50oJ1DUudp38E+7LnU4VHV9dWbQ7GZkoTv7/ZnwP66
         noVIjyPhGQu2IUqvrgN0NaK0kIKPpZJ6HfJFScH5nAHdiTURj1ehl5Wxb7sU3Ul2Zmmq
         DNlC0Y7KnMxnt/jaazVH66nbjwVrSiJY1tBgxuxq6Ex28HL0Owm3C40FGlGZF0lTz7X4
         0HuzdecNi+T9Wvrt950mgk+jHhxYlTvMlXZdM4VErnbqKxiFSGjQQqAupdBCi8YJa69Z
         KDgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWb45AOULPD7rhJaSQc83F2zPYV68S98W4haRcYRKjuBIcDHp1iQpBDVsX1jAROS6T8FNPWDNiCv6YT@vger.kernel.org
X-Gm-Message-State: AOJu0YxHv03dt720c3TFRdFlQ/hTBX1iM435z+iKhTE+P7Sx0MnTNRPP
	27ZPbN4+YtX3q94Jkc56Q6HADUMQhWTi2uhNs2jzommeoDnBMJI0FSEjmFrMLKenHIVhq2W3GRP
	C0N8TltPRcvXcCqiuYU4sztTka9HWJmGe88mYva/iIo8zOnGM+qx3XPvgTrn7ofgg
X-Gm-Gg: AZuq6aJTTiedFPfzbA6ZkwdgoI3tAf1voY2695Mra6maNs2n9hHwyk2W3GrifFyL6tQ
	n1V38i+yJ5ZOf1uKrWIcO2tkF3hXGZIiMHqK6tb4QAgXxSBlIb8DngW09QJ5VcPLD2xtZbnPp4P
	F1aAQWptbP7XXFhiHdJG2HET+HesmBFXoz6nCC2tdQPQup+Snmdt50A4OToCJMpL9x1I1GBJmCM
	RLcdRP4JmqxW888hWZQMEJ55vUPDMFpFHRj8Aq4v1fKMRwtdxqZRVsJ1rn3tFhMRJ8gvhym1xM7
	GoPPCH36bptv1X3RXv7qTJycHP+cWZtBQS33+9rJzoZbwZyce3IT1ZahvdriOdpvK8FMxOKWyVv
	X6UvJKf1RvpsT8qktyCnVN+O+sCdjDz4V9QN4S0U1zE2SOzLx0fEzdzciPyvrQo2MU0g=
X-Received: by 2002:a05:620a:bd6:b0:8c0:cec5:148c with SMTP id af79cd13be357-8c9eb34ff20mr277198085a.11.1769775095675;
        Fri, 30 Jan 2026 04:11:35 -0800 (PST)
X-Received: by 2002:a05:620a:bd6:b0:8c0:cec5:148c with SMTP id af79cd13be357-8c9eb34ff20mr277193885a.11.1769775095204;
        Fri, 30 Jan 2026 04:11:35 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4256a35sm4087136a12.1.2026.01.30.04.11.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 04:11:34 -0800 (PST)
Message-ID: <ae4eeac9-701e-4697-9d76-931a6659e7d5@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 13:11:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/12] soc: qcom: geni-se: Add resources
 activation/deactivation helpers
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
 <20260112104722.591521-5-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112104722.591521-5-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZdEQ98VA c=1 sm=1 tr=0 ts=697c9ff8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=fehRvCu74lOKQ2FmR6kA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: h6w71ej1Iw_RfwCLtTmBSkGsQUHY96-w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA5OSBTYWx0ZWRfX7F/4tcsf3mYy
 JOIm7liCZHlf3eIOJzAH4OEKxi4Ykft2oyd16RQNMHm7iy172jATv5Ux/eW+5eeet/V/SlKbqkJ
 I8AaIdBWk4OFQUnbj9nPupFA7zstOmaNxabQllTAuJM7oRMM9Yoo9tQ9GDu4F2Pw9XOSNmh8iYw
 SGHD6q8FBdbK6cNaaJU1mHZL3iiENq8rByQhf2dwbw6NOEgbdM001in5Wbo4o3ISRgFWHMFy8rE
 M4W0RPLjCjucamRbX1U5Ho4EZMibi3kGhDfSGNE6bFig7iYVVZoUoZPE8K78MKAFaTZriMwqp1p
 s0EmW2p3NKi9TAffjddO/PsAJNQ0K96vuvnzJSOEoDUzA9QXeFIFq4cyb4ygdYbpKNHZ824Wq1M
 Nza0d+0xxXepXwFEPQqXNbEPaPUFgnxSpReqhh1QZbpSv82Y2pT22Ji3Nl+o+Vo7M234Tbort/l
 7sMAqkHokI4sO2WzL4g==
X-Proofpoint-ORIG-GUID: h6w71ej1Iw_RfwCLtTmBSkGsQUHY96-w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300099
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261208-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2BD3CBA5AF
X-Rspamd-Action: no action

On 1/12/26 11:47 AM, Praveen Talari wrote:
> The GENI SE protocol drivers (I2C, SPI, UART) implement similar resource
> activation/deactivation sequences independently, leading to code
> duplication.
> 
> Introduce geni_se_resources_activate()/geni_se_resources_deactivate() to
> power on/off resources.The activate function enables ICC, clocks, and TLMM
> whereas the deactivate function disables resources in reverse order
> including OPP rate reset, clocks, ICC and TLMM.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

[...]

> +int geni_se_resources_deactivate(struct geni_se *se)
> +{
> +	int ret;
> +
> +	if (has_acpi_companion(se->dev))
> +		return 0;
> +
> +	if (se->has_opp)
> +		dev_pm_opp_set_rate(se->dev, 0);
> +
> +	ret = pinctrl_pm_select_sleep_state(se->dev);
> +	if (ret)
> +		return ret;
> +
> +	geni_se_clks_off(se);
> +
> +	if (se->core_clk)
> +		clk_disable_unprepare(se->core_clk);

All clk APIs already perform a null-check internally, perhaps this call
could be merged into geni_se_clks_off()?

Konrad

