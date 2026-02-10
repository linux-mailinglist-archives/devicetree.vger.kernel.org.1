Return-Path: <devicetree+bounces-264315-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBlXG1ACi2npPAAAu9opvQ
	(envelope-from <devicetree+bounces-264315-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:02:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C478E119523
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 011303006B10
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6710F342C8C;
	Tue, 10 Feb 2026 09:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mgqPkqGP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A1lGwSfB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A6E17ADE0
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717518; cv=none; b=e0jkLF3Mj79mM4SI9tB+Tbmkgx2C6eTRjL+MNLxBpo0qkQIiFu00vazZfMhWr2TfA+4qhVwNP28PeoOGVOCAxKron6P8SsV21OE0qC065LQDqqlv8Ot5x/SK6iIe4TsihwCMKHRko2PSMcNe8tV28oCOyvY4cDROlV175udtIeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717518; c=relaxed/simple;
	bh=O633pzcpYpaVv0iUzzYIagk/jGUaHFDdI2DqNIk4ytg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=sJWr9RoEQItOcbbtBuNfG3RxN5Wc3PM9DqftWXuTv6m8UkSYHTDuvMdNAq3FpY7FHj8R0S6lNdPVPrRWOayqNSVTuCUXqi4F/211jJJRsvPDLTHj8Rq7LnM9EpWy+xr/arjQEplQ3ofpxBkGnANcjZzCuZ3g+6ievyknJDDk+6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mgqPkqGP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A1lGwSfB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A756MZ3436801
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:58:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J02eDS5+OrtFybete0MtrhNyMJZo6fotYJ3t3dv6qwg=; b=mgqPkqGPjdq1Dt4C
	UaX7wwyZ32sGgWTuR8t/jHHDXXVUPaPQCa1tMTdCiLp1mXjw+TwnOIYtAw9zHEes
	X+rewkVYueDYxXTaavIWkJ96LEx+tJf/PF+/JxqzosWL6N0gniQpX1kU8kcnRDhf
	h+4ViGNqifDk8zscwmQwTnnIkPVE6Cg3JzgI/VpiPYmQmd7m7uIrck3THh3u7Xks
	N9NjFbcNwr5qtWWFZJadldc85sQqepK2p5/yhq4mvbvQE3fcpJ2GizUdlsrGHYEx
	j7m/QMSlR13QWFAqYO61U7X1cc55CcmcQ9V/xwKDCX0pdaHFiR+IIrYN8ttxc2Bj
	WijUtw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7fevbvwd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:58:36 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c533f07450so166633385a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770717515; x=1771322315; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J02eDS5+OrtFybete0MtrhNyMJZo6fotYJ3t3dv6qwg=;
        b=A1lGwSfBPoFrZRIaPFck0F/Dx7dMkFhRJgXQ1dwKfVal2wqjqhBJ8TBfXe1pWPilnx
         I/aWmPeiUg1d/d3VqzPk3lXfokBG3zHTJM0GBR8a0AXOzyrjuyAhSYzG6n40mk1nIygn
         0T7E326COeW2yZEP7xgAU17ywFfXrC1jnSfCoVUoTGxkLxa0T/xjeXr01cPbk5/TmlAi
         vyR1qebI1DGsH/3VRJgYPykE2Q3lSKmaUgnyKbfQlPLMRJhQ9ZcH27C2gb5Q/KPNXvZX
         sGfR3sP4AY9iaeXoXlSELs2LQdhbvZIYnvIvSRfozv+QFNLxJ2QTyT104GQieZIO56xH
         pn9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770717515; x=1771322315;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J02eDS5+OrtFybete0MtrhNyMJZo6fotYJ3t3dv6qwg=;
        b=cUE0N6zF4iGlMkA3Z9WmV/JCzOt0Gdw+JuQH29Usv+1Dg+iZu5/NrsJJaCMAugHwNv
         H/pny9Bs4LiRarJuqJLUNglt35Z6YD7SigFssqEmUuVCxhdapVpmeCHEqyx4ebmL2nbG
         0fUqQYzyleqgA7hvZ8eLnzAWcjda3ImHSyOTL9cWkg9+Xky8vOEwtojWhkauNpqFqI0t
         p6aR2xx/f+IGg0M5Ehn+ZN5N5W9eIrhyCCxy3pdz9MhJua/a22VUX37rQ2CsI43cgr22
         NfOhbjVHTJYqMiOF4HT5Y7n+79vSPA/DFTG/kiFfejIf4Auyrzh4TQDVl0nzmpFq672i
         I/Ag==
X-Forwarded-Encrypted: i=1; AJvYcCVKLjio+3ZkyZntih3bxfq/eR9ET0ewVTOn2aU6oo+/WwPApU4DOJXcOi6qRV7wjaVBvIPtBOnYgaWX@vger.kernel.org
X-Gm-Message-State: AOJu0YzX6wF/o2efr+QtbB4k9wtFcU5+4Q0w3Hbgcf980TzkI9qa7IqF
	sYSPujXZwswMVst2zqo1xQWirsl4TFn9BVxxVpIR36dOY/t9i9ap2fauZbxQfoj1M6ydhhf7Ao5
	/0M1RJ8DIHw1PfGnICI0CkpJHS+XRsla4GYxI0AhDau+YvaRGoqw4wdNP3q5ceuv+
X-Gm-Gg: AZuq6aK0NPuYcHAfNNT+7k+uYXQ/sFtB/k5Btxgs8Cog7H0uY7bLzBkKvo2Qydosj/S
	bwfDlp7krgoJOKIgmdXclShdrf81f1bzCXeDbTLmkP558zYnAuBA04Tc5+oSpFpptv2Ym5Kv+2m
	fzeE3v6hOA6qsjre0w6orgoNL/mq0iLA6gKsK59cQRAhew3l/3UuWx/oOkWS2cMMbFEiaCybDsz
	vyvsKBE03Rzp1bfFV6eqT/Y4uqTL8RJPIY5Wt3QlDsuf0jpeVtHhFxGNKKLEYfPm2fbORrSh3Ek
	wZtrN91fzqAIERMQWy7maTgbAuOyshGYKAH/dJZEA3zAXmy9ppT1dOKae90yRXtYQv1hRYvdhAu
	XdvoJIC8HDS1gHXsy4vuK/8gCkF5+F91MdrkOulBiD968rgcjKez8aBEBlSAPI8Er6gFiL9TBmJ
	r2E0w=
X-Received: by 2002:a05:620a:45ac:b0:8c7:110c:762f with SMTP id af79cd13be357-8cb1fee2ebfmr111382185a.4.1770717515552;
        Tue, 10 Feb 2026 01:58:35 -0800 (PST)
X-Received: by 2002:a05:620a:45ac:b0:8c7:110c:762f with SMTP id af79cd13be357-8cb1fee2ebfmr111381685a.4.1770717515161;
        Tue, 10 Feb 2026 01:58:35 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edacb18aesm501973166b.41.2026.02.10.01.58.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:58:34 -0800 (PST)
Message-ID: <cb5c4a0d-9f4e-4338-9c49-8f13c2a5eccc@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:58:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] thermal: qcom-spmi-adc-tm5: Correct the voltage-code
 scaling for HC
To: Richard Acayan <mailingradian@gmail.com>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Stephen Boyd <sboyd@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20260210021819.12673-1-mailingradian@gmail.com>
 <20260210021819.12673-3-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210021819.12673-3-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: gn26wejfJk-14QmiBuXyYnegbk4l-m5R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4MyBTYWx0ZWRfX/EgPwB1IL5GO
 GUbhNl5wxsu7JaDn+EdEN0XavK5dM1GKC4RsHEYSM9rJOLA28Cyj2/MwRD56f3yX9E7oQwKtw7T
 vRfNFVGRqawq1UnMC8n6lcF5cnpMqmoce8L6UWm2BGvfX92NYW+rQSCkJkzFp0w+mCCbgsIZG8p
 naFPXSp4t9Hfm0eLXyQ+RmcS6VsgYF0cjNv3LbY9ljMX4QnwqDBdL53I3KPrgxTKd1PP5l5xM3u
 uP9GX5xJwW6HwlatHD/b0AVfLB4s0RWEnHjQLKQ6hczR7e4/fPyGKzaNm3azpfrF7KGQeSdlPzn
 O8+e6K7Dxy5bvSm7pQ1ymJFDRswJG3ChbT6goNA2s2OsDSZJfU7lWcAl/Prl/5CP5TWS8tKbQkk
 sWwBkYgKL6GXACGhSMJUJNYarq3kCLecilPqt/gJBcWhb7mQDrT69BfUGM0vKHa6bj4JlGZpTg7
 wzyNHjfMoAmSeFq2SDQ==
X-Authority-Analysis: v=2.4 cv=F6Rat6hN c=1 sm=1 tr=0 ts=698b014c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=am3lAksc-JuIhvUlS-gA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: gn26wejfJk-14QmiBuXyYnegbk4l-m5R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264315-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,intel.com,arm.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C478E119523
X-Rspamd-Action: no action

On 2/10/26 3:18 AM, Richard Acayan wrote:
> When support was added for the HC variant, the full_scale_code_volt
> value was copied from the tm5 variant. From the downstream kernel, the
> scaling value is 0x70e4 on PMI632 (tm5 variant), but it is 0x4000 on
> PM660 and PM8998 (HC variant). Correct the ADC code to voltage
> scaling factor for the HC variant.
> 
> Fixes: f6c83676c6097 ("thermal/drivers/qcom/spmi-adc-tm5: Add support for HC variant")
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

nice catch!

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

