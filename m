Return-Path: <devicetree+bounces-276122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cH9NE7bst2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:42:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E2215298D45
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:42:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08382300A13F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0588F3822B5;
	Mon, 16 Mar 2026 11:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hlp0uamW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hr/oDIxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8192765E2
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773660971; cv=none; b=eUU45/a3MEwhgYRXt5gJiOhqpVAg+fVMUtEatKJrBCEH6zKIxECbt7viP2nGdnN4SiLDzp06yBgaohnlok2QeB/zVLYKi4VpHdyQOvJ5Y4haNFIcX/RGR1bthttZS1crJkf1A61KJy7gDlLD6qjPgROPrMvU9pieTFv23l2rpTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773660971; c=relaxed/simple;
	bh=8FwFRyaHE17f2syED6gekJanvTHmxZfOiXjWXeA8/o4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TN6OOdZsmg1BzvjLMdd5Jx6fkcPGw9hfI5SzkJ2vIv81jk5Ob0Vqf4haoknsUq98ZhP/6Es5KBGE29gOyiPdvOi3nvaJZJzcCq0zCsM2EPrmpcfMkWoD760zZCQYta3MREUqJZl97Og3FSw/WmzoLy1OUMVPH4KcBZWq2Vpnq/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hlp0uamW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hr/oDIxU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64fIE1066849
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:36:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HEmu8x7YnoGavOpYqOOjOXAQEDNHNRQLuY3SU6FWFNU=; b=hlp0uamWMev9OyoB
	o0tQQONbuz2tkrVmFz13Gd4x912ovMoiIcyJuTlGeCUPF7m3UudypJVXUvi97/Wy
	T+mi+oTVwhPQXI+NlAQ3AD+DfHrDrumAPQpK1iphK1HvTQas/dAj5/7vP2BjN9ga
	zhspsejeDWSPDAXgIlvz1+IMkgdyHUbMzhn7lfoL034Yu6VVtpBQBFExGzYZAVru
	uht8A4cMm2t3AqzzsfH5PCs8p5cTPQ6FRXjg9D9cK3eJMxoB8EV6JrIDtB+tkY1z
	bBFn0zk7h7Wo9JRt2ZeKLs4cG4s0A7NidVhuttAms6tq9hnU16NO0Am10FRIvBbK
	aPNtvg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw027dgq3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:36:09 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89a04e9d4faso35971396d6.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773660969; x=1774265769; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HEmu8x7YnoGavOpYqOOjOXAQEDNHNRQLuY3SU6FWFNU=;
        b=Hr/oDIxUJzXnJn1i2Jg7OknNknlNpaewSjP88KmqrSK+cEA94wik/BC9OdyAHGPeJe
         wh5xJI2xIkMwFg4Zz4zv0awgaZSS965382SSqKbi4WtCYVdnNJ5iuhCbMbUsg46EnjQJ
         WBoX2JAnqL+6ycl8YK5wFHufL5Ia5tumhgnddii2HAUsegLyZ2ufQVVhhPffSyBnNd0i
         gpKUCpNhII7Jb40PtXRGSAm6/cbn45owaeCzHf4zpopCXJseI+wx8RCxfHOCHZiojDls
         yhDGhIH4jGSqMA9/6z58mjIAbTh/cx4y25iUqi9q/fcscULg0iaC2CkTiGqwJeI/1R5L
         gRiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773660969; x=1774265769;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HEmu8x7YnoGavOpYqOOjOXAQEDNHNRQLuY3SU6FWFNU=;
        b=mOU4L9F+eQF1fMns+Y/lmi4VNoMB83ZnRvA4mAJsAtDQTPXUzzIUrssRdUD7/qgsUB
         B3Q6A7fV0Qi7IRoBLdQj7tdogzsTxLmfPkh6MUE5I5Cy4Emdgv4ZXBBnG42MIZPnFYTy
         1EJAQwgfzUw/0ScSwaXe6deDu1yPQSV+4qaFbYqq8W2xR7pKZAKYm+roHfkjfPN0QdYt
         gavnvx6qOfdfW5cfgjAnra/s7GqqAb1+ZRfXfEz7mu9gCnppnF8f4UDEGfluKL8s9+e+
         X65ptuwE7jiufsnhj057TSvGA06vOHiOCIka3kTLV/e2iytyhiJ2GzAVv11T2M+Q0vbM
         aXxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWah3U+jPqygNaao/f8HEV6bYlU4eCrUFPv4BgiR6/MhsjTo9nCmXRFxfgTKQUl/nysiHM2OpjUXzrD@vger.kernel.org
X-Gm-Message-State: AOJu0YzxRswtVh2k3TWu/ZB9iFDtxFf3FGVsCDti2EF1UzfMyCq3AIqD
	irlgUqSolMAbHZsGoFtSgSfcuFOAlPNDhmGHsVJPwqlB5oX34/QMMSzWFPVyTLiis01dmUfz0rk
	Ww6CpaBQBUHWD9q62gnERMTIOrf4snkRUhAQtR4bovurCWK7vrKmvCe/a48OhlX9C
X-Gm-Gg: ATEYQzzp06dUnMJjukAg9yoG+Rmy7etU4qRfXUziecYTZJ65kHqvAoQOUCwXea9kJh5
	zGzl2iUL99KocsbChaN26+Pmm7XCXxdI1K1jqqh7NeVtY2oeMbzPXlrGYvc8GY4+SvTvBZO6tIm
	ZeieJV0PhhHhW9RBXONzu/xTw/I9l8UTJqWPVxolWbQOgvL8WQpvWAlMyPXAPy7O+nY8+RZu9AD
	FWXpeDeO3UXCOj8pT/IY0UE96uv+dLoRwrNqbuYs99rSEvKTQAWX4LWuc+Z3rnDlclIiMNjzs8w
	RQQ2+nEQ18lUId2tz6p05d3iAhIpdakM80SsIfYIIfO0ymmcfp9efuR3lQ4lidxAjzqwRoW/9PU
	o5x7A7O03XRWvETzUwG6a9bMiaxpRI0vMonzxwxWVqvK/zfeh4fWU5Eb42xPempq3RQTrMozms1
	pfypk=
X-Received: by 2002:a05:6214:6119:b0:89a:5042:172 with SMTP id 6a1803df08f44-89a81992936mr108497436d6.0.1773660969084;
        Mon, 16 Mar 2026 04:36:09 -0700 (PDT)
X-Received: by 2002:a05:6214:6119:b0:89a:5042:172 with SMTP id 6a1803df08f44-89a81992936mr108497056d6.0.1773660968490;
        Mon, 16 Mar 2026 04:36:08 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97a6d8986esm288053966b.1.2026.03.16.04.36.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 04:36:07 -0700 (PDT)
Message-ID: <b1edb0ef-ba17-4add-871b-0903912a4ed1@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 12:36:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: milos: Add GX clock controller
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260306-milos-gxclkctl-v1-0-00b09ee159a7@fairphone.com>
 <20260306-milos-gxclkctl-v1-3-00b09ee159a7@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260306-milos-gxclkctl-v1-3-00b09ee159a7@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: JC1MVdeTxYXbK64pMt60tapmjBUuAGRJ
X-Proofpoint-ORIG-GUID: JC1MVdeTxYXbK64pMt60tapmjBUuAGRJ
X-Authority-Analysis: v=2.4 cv=AqXjHe9P c=1 sm=1 tr=0 ts=69b7eb29 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=1NpoCAVN7wpv3VHWicgA:9 a=QEXdDO2ut3YA:10
 a=AYr37p2UDEkA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4OCBTYWx0ZWRfXynFwLmD7hLDN
 6DFW4SX+rxFsTzJu4aQskfj4lux4k4EOhpL4FF7UrSCK5gowu/dmkQml4yG34M9gcKJm3D9wq93
 bNDTdsjYUCiuyglZD6lwpC1Db0d2iLsSAJgs+C/zUY3zMXUBFfqcMlZkd7xPWmyEmwDUeEBaeCm
 vT2xeptRwaQCJv+DNMgOF/hh1/kmW5SgnxWygTwa56stGv+sP0FbKB/cUqgXJNLZuw8jhaC9AeJ
 Z/a47x+xsIzh6/ucw91mr7/QsBszUO5mtzELlrNGnbWWbLtwVz/eGbug3VhZwBM+jSk/6IEG970
 LW8m8EZ78FQY+cAwIBK4jlC5sUxvYoTLnfWcFMTXgS/Y1lgYMIq7oM6Kgn8d8WXJG/X1MBYQgZZ
 qjX2ihvDHTbRHGBbFDh+O8hZ07++oBg8EKuc5JkCltr9b89rxKKQaxw1JiN/pjfAbIkWKwhQnBR
 9SSLz2cJLkuevQ4TK+w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160088
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
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276122-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,fairphone.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
X-Rspamd-Queue-Id: E2215298D45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/6/26 2:48 PM, Luca Weiss wrote:
> Add a node for the GX clock controller, which provides a power domain to
> consumers.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

