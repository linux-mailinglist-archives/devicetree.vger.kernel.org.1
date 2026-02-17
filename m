Return-Path: <devicetree+bounces-265971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gM82LhwMlGnT/QEAu9opvQ
	(envelope-from <devicetree+bounces-265971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:35:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDDB148FB4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A59C2301410C
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 06:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 124F72BDC3F;
	Tue, 17 Feb 2026 06:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c7tzI6Zs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I2KvgxRA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85A923A98E
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 06:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771310098; cv=none; b=M6d5LonCIgJMbN6os3o2V6PcTut630qEGlAmlN4inFb8gSCcFI11K1KJbS5nZzAsaM7GgwoUa6WA6FHc+GX2bC88dLUHR7nOe2IL+JGaVEr4Pitk03NtFoMQwO3cQDVP+wmIX9sJreZArRRaqQ+dhL138o1TSttyuUc/rb9yO8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771310098; c=relaxed/simple;
	bh=JhPv1xXhO2rKgUpDxUD04mkBJ5HizP0NjDWHT9ofgRY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VZ4kbC+KVwqKYbrb4kcaE3xinKJTuDiOHJLFHUZYm9yWweeopABZ5qfAWFF3PNF2UyBBu9U42REtt4JUClYHS4HXtoau5yZSJS6XUqXZ+ywZqyvaLnJTgB8ZGgeVLKdRL11yjZx5Zr17iQgPnERKCLmIzZXcZpgXPXz9hrxk/FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c7tzI6Zs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I2KvgxRA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H1lh521441859
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 06:34:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2XhnYVSOv0Bi71r+ikrHXy3C
	HaRUjxy1U7/+XGjaO6A=; b=c7tzI6Zsy21+B8kxhz5BjnfNufjBPo1oWJP0XwGi
	RN1bBbpC5Vnwdk0KpIMeV9uTGnxaVfXcbOWuiZ/BAhGlf8shSpqT5pNdI3DKW9xW
	hIeK/nqXSTYE0jl6+q3IGDAMhSODrPVJid00JImyHKjU0j5FNRJxo2lQDD6J1jbC
	/3HGNeUJwxBZ2HRfKd29Uu6LltSSwZmCoYVWaU62UHJ3QpqFAFaKrEq2UmLV3LU0
	cJdYwePKisNDHkKuphTmDjCiqkAEymNoV+Fr+WJaSBx1C2KHus+su7TCNfCrLoTm
	hjLM792JufYPMyZp9WgrhBF1rbLeTJMYw3qWBwfy8I1Hxw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6a9sduy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 06:34:54 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70b6a5821so2171016885a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 22:34:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771310094; x=1771914894; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2XhnYVSOv0Bi71r+ikrHXy3CHaRUjxy1U7/+XGjaO6A=;
        b=I2KvgxRAt4eQ2xbN8vt0Dra6QobQ8i6E1C6SgMRmFtJFOBURZk3aSMkYu5V1kyOztH
         l9HcNStx6/bChMHGcNPwBNReL1RCihxiLalX5fzEFr1fvR+8XLeZBalBDmf8HPg3Hl7v
         e+oqRf+QhiKQfyg0x0JVNQeqkDQNft62zW8mJUm5trm33XV99gqsL0AllnGc3pUEz+K5
         4Ht7yYqEzDzMdmJtrZNOw81CUBqFuHRQKiNc4MY2dgvCiky/pN2iD6QX7p5I+D4+KRyv
         CQzQHUc1YUnHZlSmBd+qr6H9z3mh6bozDSWZXvibZbUmNQLRuMX0b1Ie+pUKYSUWpLd1
         iLsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771310094; x=1771914894;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2XhnYVSOv0Bi71r+ikrHXy3CHaRUjxy1U7/+XGjaO6A=;
        b=qd6OJJ+NXqVD0+HioVBBwVBGo3SCPtJkEMcXkvx6s3fS5TQriVPEKegCxUzMXOrkrI
         lOJ+svXIPnCZoxTy0UVlcCFZFatGTvVSpbNwC7pVeVyfGAuKXtC3UlOk7XLd7BgdYP68
         GM4GezhNPORiMGxr7jFlsug9SmERV7GdxzepxP2tMXyeF0ElAKltn8oj2BYC1/PagMPh
         x57aK8cGsBBJX9FN1LsVkoAq/0HV5NTKtaj83YKZG7hnP1PsMxXvP7uAlGjeuDKeq6C6
         fA4OfXOuAgtsUdMWEArHQnFnSvZHj4rUNHM4wLbyolsbOpERtfqdPHZQNCxRbX6mxD1H
         YpBg==
X-Forwarded-Encrypted: i=1; AJvYcCWNWpXOD21eoai/UK+EBwY5kr9wzPDSnbxyN6LumzCEl2E7qtt9DJXj1QNEinyIoOFxoMcBPINQJeAC@vger.kernel.org
X-Gm-Message-State: AOJu0Ywcz9OAnF1pj9NECxaj6U55bneeIMfkz3U6Ibd+tniSJJGzXwPY
	eT/3uwkeHQHEkHbWNuPUBbC2sn6U/DfV+6vXV8R31XI0aJEfgl8srzX+fQn+hxUWpVv0houAJ1e
	bkucaBZbmSdewOUBNGSR6n3vjYonxxhGn6cBKH7pn1cqof7ljBZtRHhivxfnM4Puf
X-Gm-Gg: AZuq6aIT00jJutMQJxGXcaa9mxcs8eOuor8eYw3Bn7TUrg3TrGg+B58inirWHVm1Mk/
	f0qINedIFekIdOYhjvIokWa0xuA68TVRtDZ0I+alfZ3AP0ZQ2/9JElCJEMtux32C3mzvkaoIZ0x
	R4YY4tlKK7RsPaxjFqJpUHXmIXPAlDOCRKWy/gsKkbWFFV0C5bBBnWKTNEWI/Wc3j6uAVMnXtAE
	3KJ9wiUDxhyzMawFMFdOSlzo89kUO19InZw3F7Jc27Ufn9DaNUWIUJQipLnJQXOgACT+KVG4cgN
	PZUmqqqGuS7/Fgj8E6sYvOul+IR2F0WHs5SJ3ZvUCW14z6FJTvfIjtSkPRvWeS9Ap3O/SKm/cpF
	YZw/W0FSUXjJRlpF/xE61EZmoS84QAjySdBMYk0MmPfKKmsmE5sOewTEUKn+OpFSfg3MM5bl598
	O7+v8ncR9zdF3bMuEIFsnLjCtsEHP315bOuiY=
X-Received: by 2002:a05:620a:46a1:b0:8c6:a034:9225 with SMTP id af79cd13be357-8cb422bfef5mr1496099585a.35.1771310094138;
        Mon, 16 Feb 2026 22:34:54 -0800 (PST)
X-Received: by 2002:a05:620a:46a1:b0:8c6:a034:9225 with SMTP id af79cd13be357-8cb422bfef5mr1496097785a.35.1771310093687;
        Mon, 16 Feb 2026 22:34:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f56312csm3792271e87.6.2026.02.16.22.34.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 22:34:53 -0800 (PST)
Date: Tue, 17 Feb 2026 08:34:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>, quic_mohamull@quicinc.com,
        quic_hbandi@quicinc.com, janaki.thota@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: bluetooth: qcom,qcc2072-bt: Split to
 separate schema
Message-ID: <xai73ei5ixb3qpp53cjvk2h4adlfo2zl7qglshup4pbeyh4fpi@ihdos4z6vsoo>
References: <20260217054731.3058567-1-vivek.sahu@oss.qualcomm.com>
 <20260217054731.3058567-2-vivek.sahu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260217054731.3058567-2-vivek.sahu@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA1MiBTYWx0ZWRfX0e7wAYMBS1AM
 mqs54LvUTxiFA9QphoOxjjNeFkfsXq+5RezxjNFVwPI5PmzRUtQHesjooGOprYAtwWLE8DjZTWa
 dk7n2uf11N9jz8c02cY6nZbXD6oj7knCj3wVDzc9Kmvl12CDEktAuG/qbkndQL1xf43AxT0Ej4f
 JKs5MSk54UGrOSwZR79TaUTwoKCwXXSGbXhK0BeqccfI+xpkyJDwXh/okJcaWJA2VBS8rTh6M9U
 l+d1LaV70koQIT28iMolc+tOZBxybjotjSUcCrNxvIobErZvhGG88uepXzFD9ZAgl/A5gyyjFPF
 dBublx2kfvmAbPQz46BfeMyKiEHNDrDW0b/pwcsicOhV3SjPYP/NPsOUb29KS9LNVKhZMO9fXpS
 60picRbk8SGzqlKp/dDSiGSdDOXBWDiWCDZbQsLGPOXPCG+hrAZqXx6VincSUjxX81pQA7zWzGY
 b57ouWKX9dVs8aJgx7Q==
X-Proofpoint-GUID: 6xGecI2rRhPtMOedToGl9utHikTD-nDE
X-Proofpoint-ORIG-GUID: 6xGecI2rRhPtMOedToGl9utHikTD-nDE
X-Authority-Analysis: v=2.4 cv=TPNIilla c=1 sm=1 tr=0 ts=69940c0e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=uJRx3kuxFX2Ebkl9aE8A:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170052
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265971-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,holtmann.org,gmail.com,quicinc.com,oss.qualcomm.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0DDDB148FB4
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 11:17:30AM +0530, Vivek Sahu wrote:
> One big Qualcomm Bluetooth schema is hardly manageable: it lists all
> possible properties (19 supplies).  Split qcom,qcc2072-bt to separate
> bindings, so device schema will be easier to read/maintain and list only
> relevant properties.

How is it relevant to the commit? You are not splitting anything. You
are adding bindings for the new hardware.

> 
> Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
> ---
>  .../net/bluetooth/qcom,qcc2072-bt.yaml        | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/bluetooth/qcom,qcc2072-bt.yaml
> 

-- 
With best wishes
Dmitry

