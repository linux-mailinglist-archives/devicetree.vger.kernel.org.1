Return-Path: <devicetree+bounces-271834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBi/NYp6qmkqSQEAu9opvQ
	(envelope-from <devicetree+bounces-271834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 07:56:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 133C821C340
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 07:56:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0CB630329B7
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 06:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17949371D07;
	Fri,  6 Mar 2026 06:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l8CIa2v+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K0eCpLL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28D1369992
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 06:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772780168; cv=none; b=t48vf2kmWkVfv4bkn6Cjv9rVBdCvSqx5BLh/ticM+EGlU5UH78nQEGicaJXHp+fjpKOZDdGqxNhw57KQu82zPovSKEEsIk9Xl+GqLiFQ9PCjWrAkIf+0LUhm8sZLcPZomCPMW2OKxjsD6UDxkGriICi4h/x7s1BTiyz2aNR5Av8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772780168; c=relaxed/simple;
	bh=pnvGQd4DiBd4zlxeaf2yVz3+fboP9br320RdhvzEHdw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uXJdi3ls8cEaz1JtXix/RCfOkEkQjcqfzUrU2Zd8G3J4p8oyvWSUfpddAurPQWLAMkGS+G8vc59CqrRr12FGz89kIlpCYiDBiUzGMKGZAKYhD1nBBobnySeHAk0dn9sITBN/R8vsPP2ueMWLbRt6QI18TMY+2d9lvpxjdJPYhjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l8CIa2v+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K0eCpLL2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264aXwf3886658
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 06:56:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ti+waHusplNvNnbcc5Rbca12EALs3LAYLE7ZMwSf2Oc=; b=l8CIa2v+srvh7IKF
	8se5HYn2L921St7q2QGO8fyu4W+fHWropv93dAV0cbsb37V1A5Q7NtffIzb1UT2L
	myEqLmB0CUBzEoiYvU5ZXawvPONNlNesZd4C/0z+PuV979VB4QA6xt5OBuHSbszB
	n6KiYju6M/NfzvuaIcb+QbDz1pki82qlbQoaFYAY/kaNYhQMX6NB7aUXJVOL3p2s
	ZOP36IoMgcetd6cZdlzQ4D9s/veXT6c5WDsrtt3T4c85W9gffgyUHbZ72JSBFN0A
	CjyvprMA4+mRLr9of8rbsqh3xLlFu8i0/y17v4F+r9KkVLgIlPxGkzf5YIgHMUg3
	JRh1GA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqj4s9h28-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:56:06 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae50386da7so33688575ad.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 22:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772780165; x=1773384965; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ti+waHusplNvNnbcc5Rbca12EALs3LAYLE7ZMwSf2Oc=;
        b=K0eCpLL23R+4l6ES/ZByAA/4hXpdUgJsm1PnNk2RKXvlg2lt3YBJoIcONKLrT1qyi8
         jlzXQ3XB7m5bk90adLKIwJk+WzdtqzczmwzTxTNVw/hE511HsTCEDXB4kbuNnOXBWV13
         4WIaXrAwJK0dupgrjZjKGvnypAB9abNAlimjchnJ7ctlMSXnjqUr4wdu19I1r1VWGxbP
         +9Dmmz/NNFDRzrlokzR/M+bzUNOj0t6sXFHf30UlaV6Ge8oZ9EFHuABmkCjbni2m4hWt
         2tzzgRM8wgQMw6kEaMALtKhAkXskgC/6GKzLfAy78rKbsG6SLCNvCoS8Whr8T83bIxvi
         QoDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772780165; x=1773384965;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ti+waHusplNvNnbcc5Rbca12EALs3LAYLE7ZMwSf2Oc=;
        b=VH4NL2Nun1tgs1wXSG0NFzKbHsMdYHNhOd8p/r6wlFo2p7FHDKyw75dw54euLmy5yY
         pzDuGTHC4pzf0ZGlX4MF6j72rAmT6ogks2OrDnIpM4L73vL8E/2n113cKYAq4axs4Wdq
         ISX1ethHMYE4ja7XH+gIu6FJENYJVeGJBzBpb9yHBUG9NuYGUqPcM5roCvq9kvUjR1sO
         /zAwzssXNd/6zZT7QIGUXglXDqRFAxchiLkh8I4IJlsD7GS28CozNmtzanvmUxp4LB5J
         +ncJ1iEbEK8PvalNGLEkLsdut7OLQkllSE4I2pnFq1Exoir0G4ZzRa2ClymJv1/vjtaQ
         uz+g==
X-Forwarded-Encrypted: i=1; AJvYcCU8fGJkaPiGbC1Awg6jP2S8sVHFk+s5aWNjehsvHN21JqttIuDRLRyP4hubHtx2CVF8DNLcbETzN2Wt@vger.kernel.org
X-Gm-Message-State: AOJu0YxcfeHjKKQ8ZNgDHa0+ubgvAJA/ni/J4uj9fWLsRMc1Q4hHlQG3
	FYYwn8ivmpEfSZnqQwFed/EEhu2a8I4BJS1LfWWpfLchH2Sn3zCHMz9bUUAPyK8KjZ6cjHFVrad
	Jmg+xtC2eeWZmWXC7tbYrdPgrAM/Ih41rKDY2COPEsaOECFRczmi3IeK9BI3avsbI
X-Gm-Gg: ATEYQzwNFhia7lJV+A9esS9jf4hKAYN0HU3ZWN4hYhp9i7muxbxMBjpZ5/3t1mSE6bN
	K6Th9BtF8DdkGhoCVysUlcy/ub0fILim1aa6fwoeh7GPVPKTnQLhH4e2gpFNMt6JdpfbXOoJdDa
	LxdYJKiEHv/HivGcoXxiPHNk/Nu2FSn4vq445fL/rTrr9yWT+9iqJfCondK22c35pnfduDoEmmI
	9LN0xqRwi9McXNtYGed1aMWlzFdKJ4UAHVwc/qr9AOHtep0zliSsn6zAmfK9+BC1nGMj8lrGShk
	jfoShtgoEbDSrQwRCf5XfaD7LTy6dTT8Yz/0D5eWQ/wUYTQoiVDkCP0uQsEM5bNKcwovefNnhSm
	gV6hT/rPGrlDRv3NcS5rGPVU7XZy5z+HAURUvaSFqPN0dVw==
X-Received: by 2002:a17:903:2983:b0:2ae:5350:3a4e with SMTP id d9443c01a7336-2ae829f3447mr12057045ad.21.1772780165316;
        Thu, 05 Mar 2026 22:56:05 -0800 (PST)
X-Received: by 2002:a17:903:2983:b0:2ae:5350:3a4e with SMTP id d9443c01a7336-2ae829f3447mr12056715ad.21.1772780164684;
        Thu, 05 Mar 2026 22:56:04 -0800 (PST)
Received: from [192.168.1.11] ([106.222.228.80])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83ea69adsm11963295ad.37.2026.03.05.22.56.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 22:56:04 -0800 (PST)
Message-ID: <dd14f8dd-254d-42a8-944d-f667153bea12@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 12:25:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: nvmem: qfprom: Add Kaanapali compatible
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260305-knp-qfprom-binding-v1-1-1b3effb09cad@oss.qualcomm.com>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260305-knp-qfprom-binding-v1-1-1b3effb09cad@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA2NSBTYWx0ZWRfXwahxgwn02djt
 bavFGaKF9XwxaghZgZCmzqemG/pyNyFnYM7G/wO0ZwJMnXWtmk0jzoTKxsr9RSzq0bbM/aghgJB
 Us95FKeahUCZjsNC8KWamVMUZ0XGQKRzaKHbGZYwucKalRv4COvpVGG/I6Rm6N5RG5t2jbBOGbg
 MBZ2XkVPJNa7kCFmPT7WoOptp5RQguWtx7Fez7s5lxUx9WK0V2xBGqi4aXnp2lvlINeZPKKQAhH
 XcSXTrNg/Lw0HjMnNcUE7cZgQLZT0pTtk40ooZEkL/O1f1718qAJccpwmx0YXlRZR8NNuFhaMgf
 CbwGCo+BfduGc9WE6ZWApsdqYjbcUoN5i7qnTgZ7QJMntUlh0Cxuqh4042pi+xc0jSjdlJH2TK+
 H8XCaVh57tpNo8dqChurcQ2Y1mVDVhZnY8Gb0P+aYboh+Tt8Tc9uambh07JdZ9r4lCdkckeQKIM
 Z/ClxJWCxnhzt1tZidA==
X-Proofpoint-ORIG-GUID: arCa7joYjTwZ9Zu4l0Tfc0lWqCvCxGPc
X-Proofpoint-GUID: arCa7joYjTwZ9Zu4l0Tfc0lWqCvCxGPc
X-Authority-Analysis: v=2.4 cv=T8uBjvKQ c=1 sm=1 tr=0 ts=69aa7a86 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=uL+hpB4jSAN/g3a/thif0w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=bMeJC1LCwUUxvMwXMs8A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060065
X-Rspamd-Queue-Id: 133C821C340
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
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-271834-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/6/2026 12:10 PM, Jingyi Wang wrote:
> Document compatible string for the QFPROM on Kaanapali platform.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> index 839513d4b499..2ab047f2bb69 100644
> --- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> @@ -26,6 +26,7 @@ properties:
>            - qcom,ipq8064-qfprom
>            - qcom,ipq8074-qfprom
>            - qcom,ipq9574-qfprom
> +          - qcom,kaanapali-qfprom

A question to the maintainers.

Do we need a new compatible for every chipset? If there are no KMD
facing differences in the HW, can we use an existing compatible string,
like sm8750's in this case?

The fuse definitions (which map to nvmem cells) will obviously differ
between chipsets, but I am not sure if this alone warrants introducing a
new compatible string.

-Akhil.

>            - qcom,msm8226-qfprom
>            - qcom,msm8916-qfprom
>            - qcom,msm8917-qfprom
> 
> ---
> base-commit: fc7b1a72c6cd5cbbd989c6c32a6486e3e4e3594d
> change-id: 20260305-knp-qfprom-binding-efcff6ea9b7c
> 
> Best regards,


