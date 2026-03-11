Return-Path: <devicetree+bounces-274101-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EG2BLiRtsWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274101-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:24:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9E6264734
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F24E323B66B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53195317161;
	Wed, 11 Mar 2026 13:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hgdVBMD5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gC18Ske7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014F53148D5
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773235201; cv=none; b=ipPZ0xRC5cNlrg/GhjJ0MvRLSoqd1bZ0Wc9ZPB4VwdwFU737tp6LV/h5cl+OJtUz6Rxzxxqvlul01i764C3XVv2BJliVUEU5Pq9GmyJOD7MxGf7YxntU14LnkDiJtlnEkYAZhXViGX3gbAqkKNyYedzOzNs+DcKxgI2Vw7T6aYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773235201; c=relaxed/simple;
	bh=eHGgIj7TzlbV5AXVex90BCB8HiA4ARtVW6KIkGXcy2I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m7q/AkvQHN2hZVHBbDOGWXKdFJE76zcp6YzNphxR5/T9faub597pEc3tydUosreFjBODu+hTMvIxKSriEI7A7fV58Uxjw5T4+auCD36U1i5NMc64i9zPQV1SWHNrpYq8AUTxq9sxhWQDYjgArjuN0QOgDfmk5CEL6q55mVmDB4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hgdVBMD5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gC18Ske7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B9jSvC2179445
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:19:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mlIqykN73/hnzO/Uo4qX5hZk
	MSWMvhnz0mLy2maPm3U=; b=hgdVBMD5WL7o/pklJwlkfz2r45Vcsgul7DB6SQPy
	KUlhd1/loDtFeXfqWUsd1r8hlUmRRrZDu7QZ05RxgArY9H77zQEcmR/azU23f+hs
	Wx3g3X5o5KF1IpBxY1i0jD9WC+wnKwfUaH8sxN3BHbPreFkKKZoecYj9bKNVbzsF
	8jwLC+522n2hFodowWtZFsi9HLbxvGn6HNOWFRPB5q1TkKPnFd36Uwon6DQpS7u6
	szwo74NX7pWsDSpxmWXa/Kve4N7oIyy44ppFFJNy+6hrpuQTGxFZVdey3R6tN1wA
	VIooO3GbEqFHlxNlzIBeb+jQnP/ajEaKkN9baMULe2FcYg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqvsupcd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:19:58 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb706313beso1870929085a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773235198; x=1773839998; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mlIqykN73/hnzO/Uo4qX5hZkMSWMvhnz0mLy2maPm3U=;
        b=gC18Ske7pCgG45HoduFupvdGEskmBmElodYd2zGYUbAYrR9rhavW7XVM4uvgFjrggA
         v6SXtjj/hutcnr7LWr2fUCvRxurTykZLXTW+HpRJSxjntroepqFSlx3vpvYM/arf6AM6
         XhpBKbPkU2sxbE+PItWNB1y7hbBukrFaaHXf7SwZQATWRhr1cl4nUrS6J29j5tTvYB1Q
         c3blUwqeXk/JZ9iffMeMmnQ6ZA79mBZM/UBzDOGpqeyrf8G5kRgRVXTVLpNzVTZmLql9
         AJgaUMB56Co/XKotvgWGSKtWW8r1MPBe58LfRXGM6jpC+08S/cEHy7ym2MkRkti0sOFi
         MsDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773235198; x=1773839998;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mlIqykN73/hnzO/Uo4qX5hZkMSWMvhnz0mLy2maPm3U=;
        b=cNv9IcetY8550cmJRT0cF0gUgaw9B0ajReGx3PGDWk5CAc/Gil+u97maOzjQ4KLFWc
         3zkJSGx5UeNjYI0oZ1ZtxtYnm8h/8K1OTYtFzhckudEvWcpfFdOpAUfbqgQWJrqeiY42
         GMNoBqjePGr/fuEuIxx+80px4yhdyPGyABSlnubosuy7iDoGI2bpiZ41dV9FuEOFinyK
         nP/lzIsCepIqmV3croohFUyc5v+AA3+s20vfrSTh4CCSoGHQkbtkBXp6rX2EjzvMqRB/
         jjH0/9FX+SewY6/FtKYs9dWiKgZ+I9t88XHUbAVPL817GXAv7JNogrXVCTxe21M3BX6r
         MPkA==
X-Forwarded-Encrypted: i=1; AJvYcCUXxK1ozqkLfVlVWNTM9hgoWwnlDBvlPUjeZDUpOkdlMRzKIkIYzEYjJZR7pi4VcUlJ++gX9DPsBfLb@vger.kernel.org
X-Gm-Message-State: AOJu0YxWAEtBWkNbTk3B5KurbLaQsSXNnWwdSEyI+EP0MslMhsMOHVRu
	UreCfaHnLUg0zzkjNuPvhlZmqAjCjB+IPs+ZC9O0aL99rL3gsNeldmxh8N8wJtYHScdRTu09FQU
	ibmdftTtJIMwN49sRJkKmKFvU8i1+JOhqYlr6XX3ROziVGP3zowwf65fYINSLV2qK
X-Gm-Gg: ATEYQzy7/eHFxi4RZxIQHuYW8HtCHp1EheMQUSjtux7jUcc2Z9k+VKAB7MrnvwJDxXh
	Q4H6NJTKY/6QmCCs5Lgt4/5bcyzb1o+yuhvGn3f0K+rwP5dJvlycNoVtCouvz3w9Oj5AAfUbkFj
	91AmF9Y+GwSDa95iptK46+VnpajbLCk9FJkxFttLlyFoeUjSr8WK4RWVSUm8RnQOQ7qpOf2qs3s
	vAJ552WcvRPi48GtkpL9ctY3bqEjGBuY5fk5bUOJrsI0LooE8sZ3otN6e6Vcd1CA6sEgOhBbPu+
	ET5oZLm0HQy+nDuzPlCRR0hnBhTzkh9EMSK/fNnY6n1RpA+he2g/0BgPsNNhTeQBnfe/tYwA1bW
	OswdIWM/QtYT17JXGCFBcAtF4ow2thDyAfVo/
X-Received: by 2002:a05:620a:40d1:b0:8cd:81cc:5568 with SMTP id af79cd13be357-8cda1a2d860mr290004485a.44.1773235198070;
        Wed, 11 Mar 2026 06:19:58 -0700 (PDT)
X-Received: by 2002:a05:620a:40d1:b0:8cd:81cc:5568 with SMTP id af79cd13be357-8cda1a2d860mr289999685a.44.1773235197307;
        Wed, 11 Mar 2026 06:19:57 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f821ffb9sm6975671f8f.37.2026.03.11.06.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 06:19:55 -0700 (PDT)
Date: Wed, 11 Mar 2026 15:19:54 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: spmi: qcom,x1e80100-spmi-pmic-arb: Document
 Eliza compatible
Message-ID: <q75tzb4ikwtiu7qrqq73rdlwwlhd2euhptbbkpyodtzypxsw4q@vrh36fvqvicc>
References: <20260311-eliza-bindings-spmi-v1-1-1a20eec1179e@oss.qualcomm.com>
 <025d184f-4999-46e8-9800-8e606c1f93e7@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <025d184f-4999-46e8-9800-8e606c1f93e7@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExMiBTYWx0ZWRfX4BKs3LIekiVR
 yLwNlXRYrKBMKwNpMytoorfyFkWXvul/kLZvorO/9pgv/a+fz3WCJ8Wuind1RN3CEaPtoOQwA5j
 QbeWlYV0xJqcTaoMMoHQT/urd1Z0BkrhgahCB6oWLrUnV2rKhYCD/VkZzd9TNXhitSFwnx5PxP0
 umdMhx0M4FJBAfl2xLl5qT8zfHE7fqaYmZxKos4dLGI8dahtthNropZWZBECtqdbUOGZkuekBzR
 cl75C8xdokum7TbBoPeTECbUUsm479O/fEvSTi4aX3AqiIoRFoN2saDqyZ4+IdWLrrYLcqOoTX/
 Uv3NlTDY0Wtzo3AaH/UDQk4+NkHaGtVqsbn3ydO48h/V0VOogvoU4NMwFmDBFSLHielgZRj+9WA
 xq7r1AlebhQEToUzC/TmcwZ7S73YFl1XaLeJnuveeuJTtOB2StnfM/ljD7knJxDnQ4KfFDZPWka
 JmCSJmEbFCm8qiYj4NA==
X-Proofpoint-ORIG-GUID: 8uiEOcwKwufi__D-7ZSGxRJadLlZpaBP
X-Authority-Analysis: v=2.4 cv=Lo2fC3dc c=1 sm=1 tr=0 ts=69b16bfe cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=8CbAJ7_IvKNHZOTRgowA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 8uiEOcwKwufi__D-7ZSGxRJadLlZpaBP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 bulkscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110112
X-Rspamd-Queue-Id: DE9E6264734
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274101-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 26-03-11 13:55:54, Krzysztof Kozlowski wrote:
> On 11/03/2026 13:53, Abel Vesa wrote:
> > The SPMI multi-master Arbiter found on Eliza is version 7.2.0, yet
> > driver-wise, still compatible with the one featured on Hamoa (X1E80100),
> > which is 7.0.1.
> > 
> > So document the Eliza compatible and allow Hamoa one as fallback.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  .../devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml     | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> > index 08369fdd2161..f28cdfc9cf0a 100644
> > --- a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> > +++ b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> > @@ -24,9 +24,13 @@ properties:
> >    compatible:
> >      oneOf:
> >        - items:
> > -          - const: qcom,sar2130p-spmi-pmic-arb
> > +          - enum:
> > +              - qcom,eliza-spmi-pmic-arb
> > +              - qcom,sar2130p-spmi-pmic-arb
> > +          - const: qcom,x1e80100-spmi-pmic-arb
> > +
> > +      - items:
> 
> Don't change that, it is not needed and it makes diff complicated.

OK. I just thought it make things cleaner when new platforms will be
added.

Anyway, will add Eliza similar to existing sar2130p instead.

Thanks for reviewing!


