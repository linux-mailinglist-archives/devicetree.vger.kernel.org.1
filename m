Return-Path: <devicetree+bounces-258353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qApYE9IScmksawAAu9opvQ
	(envelope-from <devicetree+bounces-258353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:06:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BB07A66671
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:06:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 53A868C728A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C60F32ABC2;
	Thu, 22 Jan 2026 11:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TU9FRMLv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cudKBcHU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A96376BE3
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 11:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769082052; cv=none; b=nJDnL6BEvbao+bs1z52OS3T0+d6k5i1pfvU0YWsQfl3Dqkoyv10mwRK2ZBArAmJzs0q2/jqX43GHZNJ7LwnelDsmNv4OxtyBM2cvccWuYSyXFjlyChyHDMyx02RrBZPGUStGSHI+m1NixsyAsosCMrymVyF/RrOgJ5HYUFq/Cug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769082052; c=relaxed/simple;
	bh=ZK0ACVROQAZRt6LprTv91v/5BcxRCflplQDQ9rSKjC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tEnURqOdCcT0Rrknj5Lb4qq+z0DvAyPgpr7Add7tBeP985VKnK0toPrf6QRkdmrIGroA4FKQ3BVGoqsn+1lh5Y2uRtpDOVwfaKYKA4IbqH/IOdLQfat6kJbSjQahwHV5dzDiiIDOIJ2uX2uzQagGU+adA0tWYgkN4FUZ+0qTdu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TU9FRMLv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cudKBcHU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60MB4wVr2629735
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 11:40:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RFEI03KmqIimkO+9GAUQliSalAfKUYMXig/zdR6SbiE=; b=TU9FRMLvlN2+QBSM
	2N6qpQ3ezc1/lavcduoPFYRBgEv9rLmulr0vF28XN5a9F3EWDdu35eg7WYvSheMi
	sSjB2vLj5th9FW4IuZvvsUDItkr/zKpUPdjGjNZZ7cXEL6JY4ZQFlPHV54AHSJvl
	YuJpZE+5oMqrZhCm5XQsKOUolNRmUyPbU0duLP+M39TL+1aUrkOqp/4vpb84/jki
	kgzwDJXYJYuS50orkM+E6uhrn5IK8VdGyngqRnGbuvF+DoZzPykOIj6GQ/suPYOK
	8wb5jaTFLn4ysW/YYdFw5EiLQq8sUNnEQpYW7ZzdKLnfGhhm+9horkPhY4UHtNK+
	srga+A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bujq1839m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 11:40:49 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6d6b0f193so19832085a.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 03:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769082049; x=1769686849; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RFEI03KmqIimkO+9GAUQliSalAfKUYMXig/zdR6SbiE=;
        b=cudKBcHUccjrAE3fm5iMPE9IEcsZJjWLlJRh2j3IRpN1TQdOth75vKSx3u1NSGUErl
         /o1jfRo1/b/RrDoSUZcGCDGiWzLvnVvEAHQenlG79yGGWwj4gKnok+Vk2P3E6aMouJ6a
         U4O27xajFX28VPLY/fXuXC0+dWcTw/Kj4p7kq+PQ1joRmEY7lPtolvkzZVO1g70tv2E2
         w3MmfwnstJnk29XCdJsk+/rY1FbbgfQQlH28PTBYy3NmBc9DYlEH5ilfy16csqqHBn6n
         ZDjgEAVoZ96wL7/2QSvSgKkTrDiq1qMQaJJ8YZDgk8Qr+Om0u/jue+kKhPktNkDcXvn1
         VLpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769082049; x=1769686849;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RFEI03KmqIimkO+9GAUQliSalAfKUYMXig/zdR6SbiE=;
        b=C5FdIyEZEtTHySIV322E2GWQD3e3cmIE7WCjMRtGrNz/ho55lb+XPZQm+VtLMdpn3D
         vcb13631pqy0gU+VIFgmbJbUoOPAVcueMf2sn1s5Y+sXwQD6nbAcgUcoJseqfPBDSxKP
         fTl++SdA2udElzfHcdH5PEqs4vUk2XHHZdGppH1E1pErAaLr2oiqC2xywQ5kWhdzd894
         W6RWh4twdy6GYmJQuVAdw+US46tOarNejqStcwcfVyQ0fdLgVC7DPYlfvrJ+191uWHh+
         E0DkGaJoB9Gldgj4dStAcQsTStKzMqynt3Veosx59a+1rALHOd/7XKQniq7uTU9iZ4GX
         63YQ==
X-Forwarded-Encrypted: i=1; AJvYcCUU6NbWk4x/cAiJ+eubJXEu5mvtFirBDke4sJ3nJjGKKRRlp/3QzNWZ/OUmhNbcddJOjF70n1ej2iMN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx0998AD6gss+3DSyUZ21leFQqwxMsr3QemAaR7ua7lVofeuBz
	hkbcW0ZzA/hFRg0wrsrVohC53Cor8mhvefTlnlg+2NY2zj/VsgzqLFXug/hZ3Gw41u8viOfn0vE
	OJRSiKoMG/zlF27r1dnY4oY02QJf8fWiZFaw+P4cBM4m7xyIqyzVevCTmknxQlE+1
X-Gm-Gg: AZuq6aKPYvOV2MCCNLBYZGaRHx6Pc+TXYVZ4v3aYWkLVyvb1yXM6F2zAatOnIfsVtsH
	8eH+lCu9EQBKmjL1Qlq+loJ6jP2Ga24SdHh84MvXelf1xLc0HP1lBSHVt8MWPN2YMkCwRFsk9Jl
	gZm0i2Nq/hOtptSujL2i7FvN57SKP/cCWxI/SW+Q2ZP83+gL8AsdyPx8pVSfNteU3j2gtXHB+up
	vSodf/R06D14ScQsm9a08gi3L51eIc9kkd9y+ngCFPHmRgth/eu2XdlEmNOfI1yFoI7BhWA5bLK
	pfCYauRMrLueeLpdIT14Mg0UVidE+8kUZk3saK1ZGt2jd3TZNn/sn7ObI2lHOoB/Uq+FO9ml4o+
	q6Yk8fwn+hIAxX3jS9+L89x9dOTLmHMuRNfoaXJ1x2Vt0Xz1zV96gBuYHOvSFPVPscow=
X-Received: by 2002:a05:620a:2947:b0:8a2:568c:a88b with SMTP id af79cd13be357-8c6a67c6a94mr1953910385a.11.1769082048817;
        Thu, 22 Jan 2026 03:40:48 -0800 (PST)
X-Received: by 2002:a05:620a:2947:b0:8a2:568c:a88b with SMTP id af79cd13be357-8c6a67c6a94mr1953909185a.11.1769082048307;
        Thu, 22 Jan 2026 03:40:48 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452bce213sm16209618a12.2.2026.01.22.03.40.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 03:40:47 -0800 (PST)
Message-ID: <a52ea93c-537e-4234-869f-50cb625e47f5@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 12:40:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sdm660-xiaomi-lavender: fix
 regulator and SD settings
To: Gianluca Boiano <morf3089@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <afa20489-adaf-46bd-b3e7-c763aba5d7c9@oss.qualcomm.com>
 <20260121203005.13529-1-morf3089@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260121203005.13529-1-morf3089@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: pbB9OVuO8witA4G6hVqBtLMpu59mCog1
X-Authority-Analysis: v=2.4 cv=O480fR9W c=1 sm=1 tr=0 ts=69720cc1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=DIydkXfq6v2MYWbISbsA:9 a=QEXdDO2ut3YA:10
 a=zgiPjhLxNE0A:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: pbB9OVuO8witA4G6hVqBtLMpu59mCog1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDA4NSBTYWx0ZWRfX3BBnueQrSs24
 G51pioPUmAt40YbCVvCJ+Md0gjCNNQpW24kWjvjVioEp2tmR69pxAIUZMP++WHuwD9ZPF2Z8Hz6
 1pwKQBSd27cdsr051gy4WP+R1fhCxd2xBKAhH4ghmRQpXbasfsdXPJv85bZGna0qVk2+b9nVNO5
 ZcT/xpz2rAP3En3xFuUUNSK4ZMG0mn/xMJN9qYx4GtpVuEel0B7N+ZS8wExUlrUhYpWlX+dOVRO
 rcmPNjpfOn1WmywYIZU3fBpeUvE9Z6llP1TfP29g4rGQo9KB+NeMTZ3+xtFpWbss7/CGw6RdNh3
 z304Bf4e0XfhG0W6auk5ivN6+NAjtkBPDVdtOQ0ITzq3PA8VwPLUgYxmYEIMch5eVz0ZiN/mi8x
 VGFY2Bmi/BL+422P1j6Pyxux+gNqcRIZ+g3qKZ7z7zBT5aH9nVsYCPQ5vsEa4dmK6IUJ+GSYz1S
 2Fu03vRHe9XsqWXYD6Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_01,2026-01-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601220085
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-258353-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BB07A66671
X-Rspamd-Action: no action

On 1/21/26 9:30 PM, Gianluca Boiano wrote:
> On Tue, Jan 21, 2026, Konrad Dybcio wrote:
>> Why regulator-always-on for l3b?
> 
> This regulator powers the touchscreen. Without always-on, display
> initialization fails during boot. This matches downstream behavior.
> I can add a comment explaining this if preferred.

Is there a chance it simply needs to be power sequenced in a specific
order vs the display itself? (seed drm_panel_add_follower())

>> Why isn't sdhc_2 enabled globally in common?
> 
> jasmine and platina don't have SD card slots, so enabling sdhc_2 globally
> would be incorrect. Only tulip, whyred, and lavender have SD card support.

I overlooked that, thanks

Konrad

