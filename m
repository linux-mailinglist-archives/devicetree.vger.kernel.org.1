Return-Path: <devicetree+bounces-264278-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPcoISD2imn2OwAAu9opvQ
	(envelope-from <devicetree+bounces-264278-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:10:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 23ACD11898C
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:10:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7A2653006115
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A288533F381;
	Tue, 10 Feb 2026 09:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m+iJpxFx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c4nfpybf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F2F33F362
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770714653; cv=none; b=unzXTOMlOKNuhb6NJ2nCn1xPrPR8NQG+6ECe0W27XgqAFfUXfOsHJ0VhuO96W9nx+mF5pt+DwSKA8C/be7O7E+eZPt4HzynpeN5GpSyyhLeZBhm50pQGSa9mbhMnmRb+zfnmHHrz69ffwbAHDWDqFBtDv3d+Av44+z3iXO/FbcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770714653; c=relaxed/simple;
	bh=XK66Jj0ro33gPZNkCb3QlDScSpwkfpiEC9ZAdx8O7og=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GD9uUpwbLq5p+wGQM+UWJSlIrgEzPkvJomfQ2p6dSrKFc6rRmwXnTo9MJbI0xiVEgbVjTnhDt+0sZzEut3NZ5aM2tiarjCn9yxoOwhNSuIISAFh33yaNTUWxHurqlYtLnNHSHL3EKxIfI4sBLNJ9Bbpl6vR2SIQYG8jw5hkDc8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m+iJpxFx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c4nfpybf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A76rkJ1151603
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:10:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XK66Jj0ro33gPZNkCb3QlDScSpwkfpiEC9ZAdx8O7og=; b=m+iJpxFxnpPUI5O8
	nQHwBNRU9x0QJe2x17chgULjpaA5chcyvWbXWb0LOy58bubsFBIAaNDZINojYlCN
	EQn3fgE2/8fDxmmmFQoCwolBjJpifW/ztlt88RNmYM6UBVFZpPo+L+7yYzR5arXx
	TNOq6wRXgYouYHjOiuXZJtaixUNalJQdeQh4eXPhQJUX5UvgDGCY+lzkLMSq9LTh
	YhtD0wtRljqc2x7hcR58B5w3jSzwi9Eodxfoxzn7EKWbE2COL/oadeOIEsiwrNV+
	eFGx0P+hs+vqbIHvCkFOo3nxAXRwH59yT+H0oLjGPko/3omouNEVQaneOcZ/yAQ9
	77IvaA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c800j8e8n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:10:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c53892a195so102558685a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770714651; x=1771319451; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XK66Jj0ro33gPZNkCb3QlDScSpwkfpiEC9ZAdx8O7og=;
        b=c4nfpybf/aJUuiktiUnyN6S0UtSjiVX4qxZMBi+wTsmudoo9cwd9jXsagTP1rYnGVO
         DNIEaVxuH9urxu+WKKsJQeZ7H3jA7zOmlVOnfGH4PbqHOJUzFHpx62yhenCrO9FMJpLn
         fOTZZ90uxWsmhUUB9naPmD9fIkoInQrxdjH9Ki731CEfEbMaDBC1vRj2AbIvYbAyICqD
         R21jTXfUliSq5x6G2idIEcFok9gA+8Lplfe+lUlOTUGRqOOuAGdUjlYCF+yhFeQEm6/4
         ZcToHWkQwq+56uC6rL4/7nVrj4ZPJ0oYUplY9D7yF9L1skQZ1Z0ASLJGNugh25ae2CaN
         RFdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770714651; x=1771319451;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XK66Jj0ro33gPZNkCb3QlDScSpwkfpiEC9ZAdx8O7og=;
        b=OFNAhdBnz3Jjv1aaPibbgUIOtLPOiVu8q3ZUfMFjfScTdMouorldVEJOcxR4j+dmNY
         l+gMzpJNI5tku1F1Fa4vqWXWjxgrlNDhnMPuuk/x/KZcfT2khHbbr1TxK4dQBA9In55i
         sbUjxgV37EPeUEzycVl2mEWCAY/2iAuQr7KNYmjYZPTex3A9MbhrNZN4QCLVtBu9KaKL
         NjErSxxk7vqxJwVDm5GKCJv8kgMXXoWK7i95sR7Rkjw8TkGwWmmZXKDXa4Vazdo72luR
         iY52NQ9kPe9El7tvn6GyyJ74duo1ZK3jZkdmVxND4B1Fts3s68pYsfQwTYAgsANUprfB
         Z3kQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoYZmrmDoNIfLU9/k9HcjB/AL22xcrQAmQO3qWPH2tr5P/wOpr+SZ9zk4AUYG73aUPLdUnZvpyoZnR@vger.kernel.org
X-Gm-Message-State: AOJu0YzRGGRdKBmrWZzlhuO79EH2xbyMFyDDJ4rXX5w2+hwDfimbMhPJ
	Z3OzvObLGtAREhGM7C0NL59EgdPLMLW1o2B3sKWzn0FWVLpUGRYfUpoB523uCfeugxZ7GV8dbBq
	AqN+kWVhw9gCR1OZUWdj4qEdrImom8ZY7zlmtP00sDEerIyyMlrodhCnxzl0SUFlg
X-Gm-Gg: AZuq6aLfILaGh07UabDMHL44L4XPjLYFIau7aJbiWQKl4eSopV8kNelK3f8cMHcZtKm
	xifGO6NGSYpNDWWJ8TKvAsvEPLUW2qXpZ0kkUys+6luDuks3QiugFf01JVa08FSYKumPNz1qYhy
	oAG9JiN0BjaAi1nm5iONQuyUtoradPU7AQGLq/dpcUch+IcNmlRySX0WCTnj+t4vatnGMW3kkPt
	qpoR9nsM5aSFKo/DPtPmInNikFGNIXDehhTXX7S1dj1KkJ0AImlvLZSBq3YKgkD8HNKFHqfN2KW
	NVth1fSe4cer+u2SFdI+9qqXvWYlQekfMuUwo6hiXDklv7rbIJMIGFsXz3pKwUPzFu5l0jTHOm6
	NWx+pHb7ucaTYWEgrCbjpMNmZUndsKYvKwFmt2oIeja4R0cFY76Z5fOcAdJGVKjgUcxZRaV5jAe
	vvhZs=
X-Received: by 2002:a05:620a:450f:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cb1ff48dcfmr99979085a.7.1770714650863;
        Tue, 10 Feb 2026 01:10:50 -0800 (PST)
X-Received: by 2002:a05:620a:450f:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cb1ff48dcfmr99976385a.7.1770714650433;
        Tue, 10 Feb 2026 01:10:50 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ed6fd27f3sm498845666b.0.2026.02.10.01.10.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 01:10:49 -0800 (PST)
Message-ID: <037d0771-a802-4ca4-86be-5b032635395a@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 10:10:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: add support for pixel 3a xl with
 the tianma panel
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc: yifei@zhan.science
References: <20260210023300.15785-1-mailingradian@gmail.com>
 <20260210023300.15785-7-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260210023300.15785-7-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA3NiBTYWx0ZWRfX5X1OYkE2vR++
 iz+7O63ouBJW+ScmCSYjKwF4LZOGQqmtS/xpQausfJJkkvQd4Vw7WpywPkd1A4MeEmMLiYITA2N
 N8riGdUv6ric+F+uER5PYCWHN7tPheUoZCh9eUgOuSLfiW0RFIjzJswc94OYlD7p3e+FpHDORyr
 6erR9BSwYZpDzHSe5GJR7zHXHQoDTCo/dx1/i6vgR8fvU1+jiBLv3KgYgdhln7xZJe4TqsjIroH
 t3xvNFlcZQXDQc9INxTmmp+ZSqgpXl7kQaGQXRkKdk129TXgrfCKmajEBedsindJ4nJ5wxlZBTk
 U+rKKYzwfYU74sj66KjQVuy0G1J+MdEFb225tbeh/OVnYFh0zAzuNVrRqtBIG1Nj7OJBH2UoVqv
 2XyGCiPUQcwKC26PuFpJQRYYqZc2T0OVL23d7dk+pcufo1Z7AWbydJZ7PTPI+35kkVMcdmfFdx4
 /f2czL/OLZf98koMYUQ==
X-Proofpoint-GUID: x_i9rVnl1xE_VsKrtKbDpt3fKwqAgpHQ
X-Proofpoint-ORIG-GUID: x_i9rVnl1xE_VsKrtKbDpt3fKwqAgpHQ
X-Authority-Analysis: v=2.4 cv=b9u/I9Gx c=1 sm=1 tr=0 ts=698af61b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=nkUbddICNmq_qF48:21 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=5zTHlj9xAhvqCqyxulwA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264278-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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
X-Rspamd-Queue-Id: 23ACD11898C
X-Rspamd-Action: no action

On 2/10/26 3:33 AM, Richard Acayan wrote:
> Some Pixel 3a XL devices have a Tianma panel. Add the separate device
> tree for this to support these other devices.

There's not a device upstream for any kind of Pixel 3a XL - should
we anticipate a non-Tianma-panel one too (i.e. are you sure those
are out in the wild)?

Konrad

