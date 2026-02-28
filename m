Return-Path: <devicetree+bounces-269496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHTnIqOWomn14AQAu9opvQ
	(envelope-from <devicetree+bounces-269496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 08:17:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFC81C0EAB
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 08:17:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 594BA3028B42
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A73636656F;
	Sat, 28 Feb 2026 07:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fo7p2Ff+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gn9SzwvA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E623365A03
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 07:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772263073; cv=none; b=QIl6GBN/YciuqZu3IkAgRBgxfEE9KmIteVi3p8ojcCgmZHosULCAGd1bfYmdWIQbtdDjRsv7XBZbNmqRBA5jL1s1JmsdNSh7MRQdXuNpKJxCx7Jev62+By/1a+lLJplKFLwJyqg/9dpWtYj1nJuiAy77hm0L+CH/x7PTaPe94yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772263073; c=relaxed/simple;
	bh=pjHPMCgxqYfEhJbUMXAgV0DOg/qXZ27i6nxNztl78RE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L3PPr/G9ATCZHVSq2SNXarpDSGDgp7FJzSbnZF8INRlGttrTon26eH/uLd1znsF2v4rI0xpu9t1ZEprbZlQMScYt/i0HnaFk2P6A2xnOBIjNM/xQafWBcrgvLNTDYCScpCB596he4UxgwFpHdCUgIh6qiy0+/e9CKWpu1iRN1ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fo7p2Ff+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gn9SzwvA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61S6NcIm950979
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 07:17:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XhQNpl7AQEod0mH40aeXlLKN
	V3u3+gs0tTBY/guFsgU=; b=Fo7p2Ff+Z/f1vIf11BNVx4/AywPkMuVDlKd8AXXN
	RLzkKupz9h159MGRlgAmMa9s/Aaju7o9agFqVNc005CPe1qjvCwEi/OfAA8mKWB/
	GlT1dID9FoQDZo54kKNBh3bWeGyrec1Z0f6PtK3DDtRpGRusXkljTt0h65V6MZxq
	Li8F9VsVMYOubnQXOPejsTgMI2SX8l2KVVxMppqbaqeFyO8vqWtV9Uk/+Sa257Zy
	47LiX5KEznMtqYCDYqCPoF5Izj3aTEoSUABisa3pKKUKc+H9X6xGK5Hy+NyjSVEF
	cx8GuPvNdIWmQIL6Rw6F6O6C74XaIYZt+9TJbaEhNVhzDA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksn40d24-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 07:17:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb4a241582so1937591485a.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 23:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772263070; x=1772867870; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XhQNpl7AQEod0mH40aeXlLKNV3u3+gs0tTBY/guFsgU=;
        b=Gn9SzwvAKgg1DzX3jffeRHAMS6w57mE7YgelU2anGKbYRYf1jXFeYOCQO2/HFQhBIb
         x8P2yoHFt8uo0VZi+he2SBgxrWXNKaN1JDJfEKJ1yU35O5NAPYgT4rdVWc93GH9LxHtU
         ER3VMjMQTvc+81mpkTuDMyGMTStficR2fMiJvARqoHt9xGUhPpdE5BGP7ZTymcM4/mCq
         3GjqkK33gp4/VgrJ86QflEYxHHAIvk+DbICuPHyXSoeirBbhaqqqVv8d9o+lIW70RDWS
         B5hgkhEsgWz8haZDVkHqdprGGeuZVw9/qfFjWcr0AHJ+Se6vj92H+XtYuySqwF9TIaso
         HtvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772263070; x=1772867870;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XhQNpl7AQEod0mH40aeXlLKNV3u3+gs0tTBY/guFsgU=;
        b=wz3NDd4Z4bAgfyBKAkKGopuSxwPA57BNUuTUtaRnFhYSgLQ2UIETtzbtky71jsz7+j
         PadNxaDRTewLwzMXhCkXlFw39WhYzM4xntrpr/YKaxhvAWKed6OeeIUGeahB1yBNd9zu
         q3qS1HlhHLcgze6/GPEMgeJAZK8691LwUZEzNiGRfFgJbVnlmdYs9wzy6fTbhYp5F0YE
         DQd6B0kDkkJOcB+T1a14z7ApXF8keFja9+fHDJU/alPydkCV4guj3UI2GHZ/BTyaHgKQ
         S0kOaPMLjKO9BVVl3RY3niDoB9rozYdk5YzFIGcIQkN55IDYdbQfhjtnuPYGDP/+EhB+
         Sd8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWU2a7P1Ba0Yx6vYaxVQHKSZc/4Gaet2t3v4JVWA2Lt0tbq8aOxzeztDLnLltUzTF060bRJ17gq7wlu@vger.kernel.org
X-Gm-Message-State: AOJu0YzUchQ8d4vgTzOVVsNrRnseyN2qf3U0hY8Sv1WSJ0n1wp1F3PQ5
	rvEZQJQay8IN/yAjR1/FamsHhjKKH7pQLQ6FNS6XbSSrXj0zLN/BaFKGm9w4fUoE004aXb2cjHI
	XBL3eHbXuPMM50eCLxonp/G98LGapvQ0eLtyGEvXhyOiEfROS/96XAOZBBhjJlzYa
X-Gm-Gg: ATEYQzzYqkBOoCvitbTOwnvsy8OpRqhMUYCogkaRhgljUN2gPdPAMBUoTDjbLdCZB5Q
	SNeuRxWByf09ZLP6IJyf5QZaY7YAJRqKkp34oh2CMFnb9IT02a6gLV1QmmU8fpf4Br1a03vNb9u
	9QvTNG02revfEEpOnjIap+Ei0onWw5PHjaHV7O0GyPuCtpXEYi397ICn+8VjYDDk8Sm2R0bfvmm
	kzGmTkhQw85Zi8ztEy5R5gQubgR8NrVaTUXX2+cQik+fKwY18HbzeWuyd5NB4z5NSyzrmVL+Bql
	yKWtk5T8kfhzVpT3RXfe0dRICANvA6KXdo+AwYzN8aoVj2PKVNovMuvEII1XU/Mzdxjv+SK1y6X
	tTNeEGN50OQFP5iud76K7BQjyRHJJQwuOT2far/vlQf4oXvKZkigcJv/5olFuPOdHmF3ZOBbIgl
	CFYjXbP5EBgmLFUr7kZS5DtP7vrrfaWnGS9Vc=
X-Received: by 2002:a05:620a:7118:b0:8b2:e1b5:5f20 with SMTP id af79cd13be357-8cbc8e39beamr607081585a.80.1772263070358;
        Fri, 27 Feb 2026 23:17:50 -0800 (PST)
X-Received: by 2002:a05:620a:7118:b0:8b2:e1b5:5f20 with SMTP id af79cd13be357-8cbc8e39beamr607080485a.80.1772263069886;
        Fri, 27 Feb 2026 23:17:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a11771e36dsm262153e87.78.2026.02.27.23.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 23:17:49 -0800 (PST)
Date: Sat, 28 Feb 2026 09:17:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Christopher Obbard <christopher.obbard@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v8 03/18] dt-bindings: media: qcom,x1e80100-camss: Add
 support for combo-mode endpoints
Message-ID: <j46cw7ns2jvcojavsqw3f6se5zwjt6lfx7z5ahy56owtrwd27q@ufjrfwnfk453>
References: <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-0-95517393bcb2@linaro.org>
 <20260225-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v8-3-95517393bcb2@linaro.org>
 <06249a9b825de30d1fc19fac873840ab3cd7f6aa.camel@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <06249a9b825de30d1fc19fac873840ab3cd7f6aa.camel@linaro.org>
X-Authority-Analysis: v=2.4 cv=Tq3rRTXh c=1 sm=1 tr=0 ts=69a2969f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=KKAkSRfTAAAA:8
 a=lcIpdndxgU2EbPpCd8EA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: a3RpdYa7tny4xm8SerZQCFxX-6i6cwSq
X-Proofpoint-GUID: a3RpdYa7tny4xm8SerZQCFxX-6i6cwSq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDA2NiBTYWx0ZWRfX+l4g/Hj+NsE/
 bbH4OVhU8/XFy5G63ue9JZEkUPo/Wp8mfLiLKTE9jOCtAvZmkZ/0n2nHGP9YtjdNle/+xK0ZPKX
 Ah0oUB/hl6st93t48URw85vhAKhQuQG/zP2D6A8wXzcS8nVuLixmnwCxeprE+8vweOSP+reC+TT
 9k2ds1fXf+GNICxrnK6FUaaJfqXgTEwl9hKVBtr5QqR/w0r7KSxCeLVLXbUPr0tQWY/eebwgTv0
 jhibiJ3oIx7FJ6XiTtgOPXaIlfiCfPcTwHrjNMVWkd0E9voDrcjk29IKCgYFP1/NGTxLgg+sLvd
 g1oUAHVmp30R8aTkJL0s5lyEsqQuT40Z42QhrdtiZeLcFJVSmwSkmKdsSjs1hvJRo0haFutwMnk
 4wdmdJ57J8osbSqUzTlkecba37I1196jbdtD9y/s0KvN1JWsUeRGnQQwXAmH90S1EJ6eiA3/rFG
 bHV7bSTUm59ol/SyTlg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602280066
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269496-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,baylibre.com,gmail.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2BFC81C0EAB
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 10:01:43PM +0000, Christopher Obbard wrote:
> Hi Bryan,
> 
> On Wed, 2026-02-25 at 15:11 +0000, Bryan O'Donoghue wrote:
> > 
> > Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> Reviewed-by: Christopher Obbard <christopher.obbard@linaro.org>

Christopher, please trim your messages. There is no point in having the
whole original patch to be quoted if you are replying with an R-B.

> 
> > ---
> >  .../bindings/media/qcom,x1e80100-camss.yaml        | 69 ++++++++++++++++++++--
> >  1 file changed, 65 insertions(+), 4 deletions(-)
> > 

-- 
With best wishes
Dmitry

