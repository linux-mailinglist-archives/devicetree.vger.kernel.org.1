Return-Path: <devicetree+bounces-266690-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDckB8M5l2l2vwIAu9opvQ
	(envelope-from <devicetree+bounces-266690-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 17:26:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7008A160A7C
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 17:26:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FAAA3079FD5
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FB1934B437;
	Thu, 19 Feb 2026 16:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SHGwMGDA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aPRC3uq7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC6734C9A1
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 16:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771518311; cv=none; b=a2DnIEXYGjhcSY5QH0mVUH/2W0fl4wdn+Go/yduYSD4pbZOd88ab5DBDjmZjkQYeBYhbQ9Utvvmw8zaITUikb/lARS55gOzNI3VbYDrvk8uMg0BQ30eUrCh+ZqsTpY9Oo/9xqv0zmeMdQXsu5j/lSCVVUTowjYfGc1TrAtPu/Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771518311; c=relaxed/simple;
	bh=7EPnSgIjJtONu73iCmeC2kZCGyJVvmH0IQj5AAsrsqU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EDFaB4/Knd+LV/B5NYAlVYlAc1Rah0acRDEHqjvbZfEtc2IiCXvwDJPwI8XLbcMVuMtTf2RZGgJLf6SI0Re5kOZCfc56ddkVaJLjyIjp4XHYWCeGIaDgK6lPzhi4W7eyKcX/4xxsydHLYUQdJ2LV/dC8UWGH6/sFVXesfxMLBsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SHGwMGDA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aPRC3uq7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JCJI573078073
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 16:25:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p0TSlaouB0APM6wseQe0F6DwwPYAdSpgUfOura+QpXY=; b=SHGwMGDAOarzzNvm
	YsYG9qUxImAGgg4SFwbfuMwG3M/YfKxSY9xKBd7/b39Z4ZLaINxOQ4YU2FgIjhRg
	RaScX9sjXPaX37yBr1qMQHoZQrpeMxQXxr5icJKR0ib3CAOyfeUCX2G/M00zQLdg
	Ku8XGCn+tGyaRFwOE2DCd1KozAAL4/1JmQXZDjo5ygIlcije5dwSOS6K8R7/oVTH
	m7eSYgqVJb1+Khm6p3hu2xFuceDqL9TeKjW6T3uElXU6spnHaMGT8nNFa0F3ATEG
	nuMpXoCtbLCXtgqchJLPdWKZe/kbLNBfrEveWuNKkjZwfKi4Iun8bG5ET4skEnWw
	4v/QYQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdrk82632-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 16:25:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb45a6b860so82248385a.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 08:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771518307; x=1772123107; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p0TSlaouB0APM6wseQe0F6DwwPYAdSpgUfOura+QpXY=;
        b=aPRC3uq7O+xvit7R3nmrR5DQuCkCWSU5H1BDY+THkRJPmOJwBBrOqnZUldXmZqKe5V
         PHU+AdV+eo6nsuZZ201D2dy2bqjVGSLNLzfImM/jSNa0M6TLqJAxe9YQHgpKtjNwcJP7
         1mxkLrp0sNoO4iU6U1c7cAexfmZ5ZimtO65Bfk0+eL7GTe9SjXhpdP7NgmHtCwnOS5kv
         EyWFuB40PUCwNXyov2GNcXoZp2QeSjfisyuq6YwkLyurWhRCf/0e5KS6CjfsZb10ThlF
         SR6+0nYCJG/I8WoNT2yGyZ//VILfjMvxJSt9uIe6U+W4OMJ2w3ICsXUqTnVgVyyS0QXj
         53SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771518307; x=1772123107;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p0TSlaouB0APM6wseQe0F6DwwPYAdSpgUfOura+QpXY=;
        b=jiZ+0+16kxMO0sD3ipWWA8IVXrqieLlPLpev/WyMmA6vBwxVNqwOhWe8e62VIcpOAG
         JXYYpq9hk9h65oPVvH8qjlnVS/33C4s2H8X9DKCVOvRyG9lHegKmjifoh42tdzYD0y3F
         kvSPljcXiY6VfEPzIQpti0/uOYIqwQoFH9xB95dtSmnq3d9Tjc1ZGYnmvJjYtW9qCp96
         CD49ofrL5lgdGUYouUlgaz5HxsWmjPeID0PpbxZeeX61r3UbjYcpKakIl28JPzKaCcoQ
         Zy7UtZNRopEYnQjHuIzNti+Nj9f5jlSg+LEYVGj4A0Rww5tpIytHsSwAmkOtfYtRQLby
         msLg==
X-Forwarded-Encrypted: i=1; AJvYcCUDQq0jyTlNswi/dB0VOGbJzcagxY0FsOmUG6plL8w/xq9U8on0HRcVyEtY9yU+gilPPlh159Xasgsf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz69or9Vz6gwEAsIY7c9efjiOzj4BF7+TErz1wOiK7bshzi3xqV
	gBKROy1PZe1n/4uG6dMPlnzTMusNudbGTLNLUl4VqtSMqhfUA7NteAEok8F/C7sCQbhnBlTLece
	hOUEzR8DxOe4+Z6rQbK4GNJxTev4BDAyOZwm6HKee/nOgUnu26Ybs3tJ1FrXIiQBp
X-Gm-Gg: AZuq6aJfYfSeVLCUEdxwb73NArxA0KTXHn35tRCq55Pp7XOl7IEO4h40eIly5vxk0od
	DtZHbdnTHdlYO4wukjqs6U09F141CwEkl9mGNh0vZqYb2doGvs0yB3QBh4CNyOV+aC3fxP1NXjp
	ptGA/koIw7fKfsdi2Ro6bEPmtBBW6LCFi/my6Y2nRNY0kb1Z+Rq5NBrez8BCNTHkhF5aC2/3Jx8
	YDhKyMHst10jc4ZeLInvJg7dU67QOBdH5PLpOpD9Y5m66Mjtem23dnQ7HuMJs0eepeaEX9wkKm2
	yR5tf90eR/etf/Nh+8pZ0YG7Injt5uAlBAPSZXFAMmYW2UoAEvfRGughXK0zj44aXeON3FneLXS
	9gHhIzOmVPvKtuxVU07HzrQthzy1uMb2kS/powZ1m3gfgcQxzv9wdiHEfljSeUBEgPprZW6X6x+
	9RdIs=
X-Received: by 2002:a05:620a:2948:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cb408b846bmr1985067585a.7.1771518306875;
        Thu, 19 Feb 2026 08:25:06 -0800 (PST)
X-Received: by 2002:a05:620a:2948:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cb408b846bmr1985061985a.7.1771518306135;
        Thu, 19 Feb 2026 08:25:06 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3e356asm4013389a12.16.2026.02.19.08.25.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 08:25:05 -0800 (PST)
Message-ID: <63dfd40f-9b13-44a4-9f68-cd281b1e0d2c@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 17:25:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the
 Eliza QMP UFS PHY
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Nitin Rawat <nitin.rawat@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: DO2leVWQhyNRqhlESJ7Z8PVJkG4zXF1j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDE0OCBTYWx0ZWRfX3rfCF6WtV95D
 Ql4s9oa1lxjilJI+Fb+gWLI4fA5RugnHkkoAG2fc8o78lbx15UDty5QLua+uaGQudBoqbwQfMyd
 F1cwRbJFAlnq533vWZWvm/hCC42vcgxIIpibMc8YhcKgrfeHre0ugm5HY2gm09nA6O3Tj9FYdsn
 bYMZn/OVqWyLP4YpO4j9Gvlc6Azw6b1VI7//SkMAntMTB+ySs4hinVzGFtFAFmVK4v02efVpIYn
 dkBc0ug9CoJMRY+o9RCFUg9QATikVceZLP5aBUEYHj05IOzBHe918Q1RUA9vZX/G8VE0RqBlD/F
 nfz0n13uKxDOaGCZrNAmuPQrvm6jn2U6rQXQBVQNw1R7ekK9HjvkA6TGoSgEwwbH/znSjW3qU5v
 L+h759IJrOVR/efKo/B+MY4V9Z6bxN87M8EVX6y66Vg32oZ+w+7QyohgOvJmkHjIVYLC57rrli8
 TjS5gRVzALOUZ9NcOig==
X-Authority-Analysis: v=2.4 cv=MJBtWcZl c=1 sm=1 tr=0 ts=69973963 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=M5GYClEuJsCSwWFCvNsA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: DO2leVWQhyNRqhlESJ7Z8PVJkG4zXF1j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190148
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266690-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7008A160A7C
X-Rspamd-Action: no action

On 2/19/26 5:17 PM, Abel Vesa wrote:
> Document the QMP UFS PHY compatible for the Eliza Platform. It is fully
> compatible with the PHY implemented in SM8650, so use the SM8650
> compatible as fallback.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

