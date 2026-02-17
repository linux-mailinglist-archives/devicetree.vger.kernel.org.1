Return-Path: <devicetree+bounces-266018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FfKAVQjlGnXAAIAu9opvQ
	(envelope-from <devicetree+bounces-266018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:14:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CEA149CA9
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:14:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9DF653020E8A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ED662DECBF;
	Tue, 17 Feb 2026 08:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RFMK/kKW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z8EoRT2t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3932D47EF
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771316041; cv=none; b=efZn+c68a8RivurfZDUi8SlVvJjuDw1KRBC6FnJARUH+8Acbcqf2ry4Fbg/kNKVp5219g09D/Z6dbRL8pcjjlsRoCcfGBdACSiBd+9f9Y0cpNRugJgZ5lPlgF6He3iAOv5IiKgmCsXhRNvNBY63Jso5m1EtZs1zqsAW/zYIMcqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771316041; c=relaxed/simple;
	bh=EOeHi+XrxTB3rJ4d0iTLsm/vh44gO0WmR4iMh92ZCDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RITUBCncJ7H7FrQmXKPdVLLlVEG3tlJbpetKhE0jDFCm6lpLut5Z0s9xc+IE6IO1M36L5Wn5kJnj/yJUzQiQcYMZaeXkI+5iKliQz4J7UG5ksN0Psmwj0Fil3M4IuKjC3FxtHvJgbfC+L7xgrcirIQe1ZqdI3v/sJWHulY569u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RFMK/kKW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z8EoRT2t; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GL7f5l1613301
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:13:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nQ8HZnxO8/FfbUg/6bEjLU0j
	I8PL7lCPpIWsMOj5z7E=; b=RFMK/kKW9OGTCL8lep95ddl+N0+LjgxY/8AEVQ5V
	ki/6uddHffwZvwFPycnMp1Fcu5irjM3ZpsmjYuTIEqMxLXvPpjz5EsnqftxCSyyb
	eYQzqNCPHs8UWbH41mIXyjgnwBFo5EmmHxAPIgsJAmaK1pP+//4Pip/6oCRfxIBs
	IuZ2z8SAzFI1OueV/xNnQYURvFGqQXaa3qVUozQ1ePjgsWpT+GlKVBaxJKtkgXi8
	5TIoTGHoCPcJIz2ZOfubnusArxjz7sLo8n3BUdjmrygBUzYEQpgF8XmpwrG9nug2
	Wn5z4u5L/S4SF0FIuPEr5z6aIh52ZXSfX8YtgtDPJmV+vQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc662sn52-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:13:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70b6a5821so2208599985a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771316037; x=1771920837; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nQ8HZnxO8/FfbUg/6bEjLU0jI8PL7lCPpIWsMOj5z7E=;
        b=Z8EoRT2t0XWacz1ZJIEpChXJl1p1OKQN6zpPNUf0i50Z3cqOVef6bOK+eqv2EiKBhW
         K36ZuFq+RIBetAU+V4R8Zf8hpPHozjnrgjiLQ4s+dCjHrU5ZzFB34DPFJodsqcwOX4yf
         MtaWCCDKmrS4EGe8o6hWFyq3SFQ1RqMqM2UI67tj39qyRB8rr9+2XNgFULA9jIP5Xb49
         RcZ9xXYNBBHHce28aw2iIKKTjzFe8OEJnFf/8RAUVcM8t9DfK3PXW4sosQZm9RKe2GU8
         crSNwo4lDW5m7CZ6iznHfCeA2blmgwl29ZMscOtBAXKEBbHQf3H1I3f5Cf54O/eZv5Ns
         EWwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771316037; x=1771920837;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nQ8HZnxO8/FfbUg/6bEjLU0jI8PL7lCPpIWsMOj5z7E=;
        b=lg7tIEFWLWJSDpUDwM0m8qpA7Yf98HLgvbwtwhyWuLYZ0MykeLezW+kJ3ERdBDKLFw
         208bASeQU18YkvPbYaGIIZI3ff2Azx50bHFoB6l2Bo1tXLUDlEXkI3Ju3CpuoMYWguQz
         P7zJJ6DAMEjhcJNzZ0E74GtDLgAXiXtggsRT0g/xbx9+xootZ7JIBYSsY/5Lz+7puqR+
         PGuEYdfY8C5scptmnD26TzdEy+T1qlBqAYnEbk7ARrNH1vaC4j0bZyEl27R6++Mx24lC
         aPeK+L3pmIgm1FtmO6jyOufdG77HOCHrh/+dnqbMywlFqfe3oynbY7IJr3wa2RtJoi3Z
         PZqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTnizBTFtQQXdDtnQqS1YJXRsg0+Rc4ESDyf1horyqP437BRVfw54/HQKVWF1fFaFGqhW1jq68udf/@vger.kernel.org
X-Gm-Message-State: AOJu0YwkmtL0nkks1VTtEkcXsrU7NZKKby70KdB/5ztA7AXzUjJCKbk6
	sCPwMS9NVCX1v66iSLMVN4r5K2JYr1iG5jUuuQ4R8CbUyH30xJcPAgsEe6Fit6KWNBhOcCINZ3g
	IJWZ5jz+NJEyR3ryNU8TjfB9N7jkRTzFz6be2d4RZxaxtWb/ATpwja31GRX+29qE5
X-Gm-Gg: AZuq6aL7uXKuHeZ5SdKhkJM2HxtX7myyygPMrYYn7r5SeWfLuERVvsRDyZCOmVmcD0r
	tsHWTg62yhTVRjtrHlJzbvs+yZKRqc0bonIeSKaZmkgrhA1z/LK9ivvF9D7V85rZhLMHuoM92b6
	T10kmAqP3BsFAQ4FUfVDX6CUgoCDoFqAXzOWJmWz+EgeMBQCiMDUbjfQ9hDTHqwGQH0SLCQ1agW
	1NwbrPxzxdeQRTIiFxzHHLNrHaznb8XrYHzqHlIMpOx1iWXPnoZ6N/lHH/ejztAcalluYTQcFFo
	mVT0mEYtQU0cjyuOQcKLMO/wYZ7F0TLuZSjJeO5aLmoOeILwovSn8xu0txqTJRlJ0mZOZmcC2Xp
	xPLW4BjEfHVMUPlicbRBkDIZp/SLLeKFzOVRd1nWEbfWeAZtfvSN7sTkbaLl4GS0oqekPBOBqVB
	WQXivSkWhUxBmeX4eZcb95Ly5n9vogLEMrIE4=
X-Received: by 2002:a05:620a:6cc2:b0:8c6:ca70:68ac with SMTP id af79cd13be357-8cb4245c4dcmr1534955285a.46.1771316037096;
        Tue, 17 Feb 2026 00:13:57 -0800 (PST)
X-Received: by 2002:a05:620a:6cc2:b0:8c6:ca70:68ac with SMTP id af79cd13be357-8cb4245c4dcmr1534952485a.46.1771316036607;
        Tue, 17 Feb 2026 00:13:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f56b590sm3706538e87.34.2026.02.17.00.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 00:13:54 -0800 (PST)
Date: Tue, 17 Feb 2026 10:13:52 +0200
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
Message-ID: <vdxktsvqwgmwi5wuaiktjstzkosvrjkkzkisnv2k2ffyehmh2w@yleoccukebbu>
References: <20260217054731.3058567-1-vivek.sahu@oss.qualcomm.com>
 <20260217054731.3058567-2-vivek.sahu@oss.qualcomm.com>
 <xai73ei5ixb3qpp53cjvk2h4adlfo2zl7qglshup4pbeyh4fpi@ihdos4z6vsoo>
 <3f59dbaf-1270-42bc-a21c-210c92b398ac@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3f59dbaf-1270-42bc-a21c-210c92b398ac@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2NyBTYWx0ZWRfX7PcJM+L2JFQQ
 JbBl4ADG+UdcXrCdJv121Ix2h4wuuujiXBqzuHDVakjaLpke78fcxHqeURhHfB4H7c601TMMfo8
 lfC8sTOsavNH0quGBtXzHHOaecpfxjMo/vfCeiYCk3CDHeHk1avR46j3bhpbw6pZbIUu6K4fh5t
 pxtTVbuIw4n2ZPgjhiJ2OKDhZj4/o0egop03knumhPNowH/CgYlz01eLMZe3k8vON0ogd2Qodo9
 lQ2UI+qul9R2GLd4FjiqfamGng53JpZFb7PVGtiaA1N5ATZmgA8WGlhcSQIub6suwrZbh9+BUiD
 W+iVYGJvex+Rd6vm99rJFiaafa8+jTsUuZpYwMe7VMIAxl+PrNJhrp4Qmo8SmSLofjj6C6qSpnJ
 Q1xGIwmDNqbX2YGRq64i7+o86EV2+QH7KbiE4oBQek2/nb3iidf5j3qXJ7cK98vt45boTvrn48K
 R7kmdZFI31lqMHfBmxA==
X-Authority-Analysis: v=2.4 cv=Y6b1cxeN c=1 sm=1 tr=0 ts=69942345 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=9ee_7Fr_-P8LzKLAvGIA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: nyMQnHL4ijIg0OKohYkiLnz941I-kzXM
X-Proofpoint-ORIG-GUID: nyMQnHL4ijIg0OKohYkiLnz941I-kzXM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170067
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266018-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,holtmann.org,gmail.com,quicinc.com,oss.qualcomm.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 70CEA149CA9
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 01:11:05PM +0530, Vivek Sahu wrote:
> 
> 
> On 2/17/2026 12:04 PM, Dmitry Baryshkov wrote:
> > On Tue, Feb 17, 2026 at 11:17:30AM +0530, Vivek Sahu wrote:
> > > One big Qualcomm Bluetooth schema is hardly manageable: it lists all
> > > possible properties (19 supplies).  Split qcom,qcc2072-bt to separate
> > > bindings, so device schema will be easier to read/maintain and list only
> > > relevant properties.
> > 
> > How is it relevant to the commit? You are not splitting anything. You
> > are adding bindings for the new hardware.
> This commit is added on top of split schema where for each chip set there is
> separate binding yaml file instead of following up traditional
> method of updating qualcomm-bluetooth.yaml

What does your commit message describe? What are you splitting?

> > 
> > > 
> > > Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
> > > ---
> > >   .../net/bluetooth/qcom,qcc2072-bt.yaml        | 48 +++++++++++++++++++
> > >   1 file changed, 48 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/net/bluetooth/qcom,qcc2072-bt.yaml
> > > 
> > 
> 

-- 
With best wishes
Dmitry

