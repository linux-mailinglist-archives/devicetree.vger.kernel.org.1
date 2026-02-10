Return-Path: <devicetree+bounces-264289-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHbRA1X6imlBPAAAu9opvQ
	(envelope-from <devicetree+bounces-264289-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:28:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 301E6118E07
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:28:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CAC26300620B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB937340D90;
	Tue, 10 Feb 2026 09:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FWAFembi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KMkZFxHU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 879A533F8B8
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770715728; cv=none; b=ZMzViDFmDCwxoP0ekIK42Q2Xny9lbyDfbUbCrjV+ZWb35yeghoM8M0yGQTQJir6GOko2KHaAs0wp+zOF0lzEBveFyUSXyrNaj2DkJiWQk/W9LEIexXc3bX41o9JIskdfxIqy9ycxflSfidLROLDSeOi2P+PTegEPbSut0mecJCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770715728; c=relaxed/simple;
	bh=i1fhoxdAxQ4B03dy/DI680fa8rqL0tKH+RPMzYhCPq4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=fDYpLtzH9xNDpy6Q+bNRwu+xBOF1L5KlCI+4SJXRP0pcDR/GKLGEoPefok6ANzMdukaxzIPXhbLQdw/lpXd1peNXMMOD+yMkQGwPXh3GG+7rEhrQYt061yBILbF6jTUEtbgJJu/8XE0b5Z90X85YY4NGt15kiR9mmrSZPpCWHtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FWAFembi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KMkZFxHU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A8velD1231927
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:28:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LxErkvKkVbZnV1IDSUaX2yGR8Pf3Ci2yzfoXqbmX8rc=; b=FWAFembincB23m5w
	pmApDP65zET9PFQYVcMzXtjSAI3PGjPaFqWSwdxrloJ6LaNy1XbOHy0rYogMtz/O
	BOREvQCaTDSfyPcYWgpPm/HfNQYqunTy+UWqk0G3jHwrN2lLNSKZRaMan0Pcj+//
	R0q9L2qM1z7k6jy5qX9AKq1fcxgk9Rd2FRWn76UVOxzkAXMyAq25VZlz+3GW3nDO
	mgKGaUH69drRSUj4Y1kwr2qQck8DESt0PXz1JrH6PUOgZ4uXECm4W8VWVuTM19Ak
	botBv36eotJ2h2ZPM8wUFcmdPpoM8gIdbcaVnhMfJEhyFVN2xnbHYYtlGj5Mxr9o
	3lfJwA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7uv598vj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:28:46 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a182d4e1so95682885a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770715726; x=1771320526; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LxErkvKkVbZnV1IDSUaX2yGR8Pf3Ci2yzfoXqbmX8rc=;
        b=KMkZFxHUScH5u3afcPRknqQbr5xk8rL5WPQgWUdB057E1SoyB4ZG6V2TEIk1wV/NvV
         Vul7DmfzMsFEv/edK+Pw9Sq4UBjXF+usfyfgBDWCPbQsBGxX5hJTfzbSOdt8uWC2wryw
         nJUG1KKmBKlge4Pp6UKiBr87xuVeXIA9mnHXEsKD7BEpfKgZdLr/WfhjbFe8J/HV5HSL
         gxhhY9xNcgpJKHGxBfiB9+FCp5O4UqgbWmV6cZB94SLwB0HD31FOcO4UYgC6eilOom+6
         RJSS1m9tiY3H2aXT7Ptsi6IlVlh7t/anz0i3pKI0OedOwPYhCXsikUkOXiFhVVjoQyqr
         2c9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770715726; x=1771320526;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LxErkvKkVbZnV1IDSUaX2yGR8Pf3Ci2yzfoXqbmX8rc=;
        b=AzF2l9Fhm5cHEr4MtKIeXiYlBtZhJ1UpA7ysZdg3u/i69AA57gAdCWBKQ0+dQEq/dz
         XIKo337WIr33sEbuwGXkHbdQF9h+gApf/PcnxB10CN8Ab53HV1ZkFFG6ziJRJbO472AF
         fexy2xc0ll0LHnhQorUr4XUuLihckmRvT/PGTtWxWTv7TQUkF7CkVErDz+oRrUhJLWDA
         8WWfUnrezmziI6M58rpZHgSEBTIOrRxDRJBURM9qxUsppaOSx1xF0BGrPbIZyyvEeCOg
         3TLlWGqP5fGRscqQCmP1+i+ngpWuWOEyqqJqT9JyupA4lpE01nDVR2GT7L6rHwMr9jgE
         XMHw==
X-Forwarded-Encrypted: i=1; AJvYcCUSpYN5qYpngnxT59PKoJcwhzZU9BWFTC0oYHK8ky2J+Sp1B4SMChcwbmqDW0YdGQ6tj9jhKM2NGmFW@vger.kernel.org
X-Gm-Message-State: AOJu0YwKXqTaNissuthgM6ZyyMxBkgrD2paamypFfNPKs5ZAx5C3Rm8H
	dYCaGlSpzS/Yz6tPCgq8P+CMr0vafApohpgmvDq38CnH2cLbDXmdR82gfwNIY47wJ4vNIQVhKbw
	BONhWFelcpMNKQka/podWEj6Uf9Mn5SONhmEaKlWsfnebhv7xaTTzo50wnWbygudD
X-Gm-Gg: AZuq6aKy1Ep9PlLsuzcfrB9A5a3UZDndvHwS4q+uDPkz6gyZrvk9+IMvl/mKZDaLJft
	rfnEc3OBLBNgs7oEr6Aj/UspRTgdwfl0uRrW2YbnvDMJSQZ0gu8MW87R9V6CM55+ijaWyoiYEuW
	GxKNeWq//5JfYEhvT/UY955VO/tF2BhEhK/cumqrJXL2BQQ5zD34vrVxcigCdoAPvzOaEq5QP08
	J9517l3zGjdRyfFF4IXfP2tdlQi2jVMdU6vN1Oa031L6dmheV2iXQhEaYkPcPljb4RbkOoUSAk1
	iRtk/128H74xjVjH2RUQIoQ+rNStQHGPr9NO69LMj7H89t2gi86ywZGutgIl7YscCUMxbFe6gys
	7QhF9EZxaiWSp1ZM3r4658W3hc7oSsQiXTNZNe8vghg3i/1vM+kY2mmMQXB+xjwvEfEPsgAkU28
	m01ds=
X-Received: by 2002:a05:620a:4801:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8cb1fe05b0dmr114181185a.0.1770715725981;
        Tue, 10 Feb 2026 01:28:45 -0800 (PST)
X-Received: by 2002:a05:620a:4801:b0:8c9:ec71:b224 with SMTP id af79cd13be357-8cb1fe05b0dmr114179985a.0.1770715725568;
        Tue, 10 Feb 2026 01:28:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edae3bab5sm487480266b.61.2026.02.10.01.28.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:28:44 -0800 (PST)
Message-ID: <7a23d7bb-56ac-469e-9132-fc0dc9ee939b@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:28:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sdm670: add llcc
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20260210021957.13357-1-mailingradian@gmail.com>
 <20260210021957.13357-4-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210021957.13357-4-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA3OSBTYWx0ZWRfX/+a28cBBUlUI
 P8fre2fbp12N0dKDAmXJCvkw2y6QYKpzPA++uBhPYGR8TAb2x1wkQOH4Z7c7ZB8r5bi3rBjY0XK
 2FPcjEfEUjARSq095GDWrBrHxdOXnM5+aOywLORJ4Z5dwaGsqtqZ7rXWiBVBhArpt3KktLz5Ebr
 VqENl8Wt8r6C4LcjUwKWBqXRYIXrLY2f3iWQY2IDM4MY6XB1ShQZDXZ95Y/8UsTrrqizV1L94Pw
 9qEvvizj4sqyccqjfy3KnXqL3qFkuy9yqicTcw8rgl6rsKvRqfSpeNOdQe34jMFez3NKnBKsrZE
 cLKEupwO49oON+FiTXmerjDt4TjRGdhUnCzZv3oezc6BEmyhnYrNODccNv+7PFUYJH35H5RQXaJ
 STpgyrIKaCeXb5FaYyLWqPVWOJY7PEQfr6PmHSEJE9qVhNL8Q/h6s6cSp8X7OXZxWLMQFK5KDQe
 9yTOg830LJhSuv9bXpg==
X-Authority-Analysis: v=2.4 cv=P+Q3RyAu c=1 sm=1 tr=0 ts=698afa4e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=NiQ2TyYaKKJ0CbwNsdcA:9 a=QEXdDO2ut3YA:10
 a=Ql4v02ufxVEA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: zOnyYabu9VPbmRH_IJY-h6V0wp5_zsBw
X-Proofpoint-GUID: zOnyYabu9VPbmRH_IJY-h6V0wp5_zsBw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100079
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,huawei.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-264289-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 301E6118E07
X-Rspamd-Action: no action

On 2/10/26 3:19 AM, Richard Acayan wrote:
> Add the Last Level Cache Controller (LLCC) for the SDM670.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

