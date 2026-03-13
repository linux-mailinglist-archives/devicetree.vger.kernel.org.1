Return-Path: <devicetree+bounces-274990-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4I7jFuPIs2kqawAAu9opvQ
	(envelope-from <devicetree+bounces-274990-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:20:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C432527F804
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B700F31F72B5
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D94437418E;
	Fri, 13 Mar 2026 08:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d1TGl/q+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C2U65T61"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2203375F8A
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773389673; cv=none; b=K9VYjYdOB17A1GtYBFXiOfikmy+OXpYi+oNDJ6qpYkzC4CHkA8TmSJiduaVtrU97QSkA9Bm7dsQ0L5+77MGQpCLmE9auR91zHdtKbSz4Ob33PFYSFsgFqQCiW0srAmwor2MNQuaw7qMg/cO0Uy4hNld8p173vfPTKpBo1bSTZdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773389673; c=relaxed/simple;
	bh=nCazltDCI4lAoTONhY3cmV1ujaRQ9tRghJvYtDwZgFQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O2PSrhd7fH8a7o/WWorRTKAykWqqzOCv8xtubARJ6nt8ogfUd/bAB4ExVNC/QE3fsj/zHyKM+0eZ1VT2ATwFEYZUy3dgmRnOwmXFW5jNqpwNhyjGWyOZZ6Fkjnqyj30Z4iYeDMLMKgUEIYn2OR4KhV26zBXTotrAe3zyjTbOJEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d1TGl/q+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C2U65T61; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5tkI43342956
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:14:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=q2g8QXZ51t9IcKRcfUMPQORt
	FVNOSJeXcJwfEtCFtJQ=; b=d1TGl/q+egCGhua/NRQK6T6uHVPwFGAb9L/bbbXc
	TtE12oqiVDzFqARt1qAxrypr8rXfXVCF54kcaBnrqnVrJ1b+LkFi3QJM0sSo+yXe
	ErApve58biiwESDE4MIAczsZ7Jjm1VXPWzQ1ki1dLu8cRhq575eGV1pbqQHRCPJ9
	VvrS9uOk/uGfEunmGfi1n14w5kYzUXPBru0J7LSCy4g7uVrsLZQ8WHhaAqetg2B0
	NsJJVCl0BI3iSGVA4IUGs7FW9KMsibU3b5qT0nHVgR6o52uLk8+ZLQVcI5BRU1KR
	SXQDaU21p6BNJX8r4cdgE2UqgYLIi2JhLxslrbUoQZoaIg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w3wcf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:14:28 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd80c4965aso1286240785a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773389668; x=1773994468; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q2g8QXZ51t9IcKRcfUMPQORtFVNOSJeXcJwfEtCFtJQ=;
        b=C2U65T61CN7ZR54VOCaLfBKOuKIqmV7UiUwKWAoiQKrNANN5C+Ih7im8svNSHyGpx2
         r/n1eiVc+yxKrPjLuDSln/UCK0XEAboYOPh+H1/wwJd4sESMpjiFJqFGLkcC53nQNV/d
         bLsU0U2KHLFxkfuqbdJXuMTpxrA10YP8eyjaLR/CklZt+nFZqQn/AOgEELxKXgKR0YoX
         O4gq0iSO+6JDdVIDmaS3ktLkfP73GrRMe8yhhhF8R/qsPQZvlqGH5gA4ANc7zMaa/39Z
         7IGeGOWmAPtHHvyMCRsNgpIZmTHRP3YbE5rJoBmyjqG+LQm4hFS1SpOcgatZMHCxGoci
         c1cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773389668; x=1773994468;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q2g8QXZ51t9IcKRcfUMPQORtFVNOSJeXcJwfEtCFtJQ=;
        b=I9Uh2HxXDgfHZVaYjUxa8nv7SKeWRb2Fs7f/nONBUQRUbTkx5KLdkHuvjrPhnpix45
         9xjcLEmkPiuD7pUscJAGFXU3H2HBLCrR7IKHaaYAxNnzJkVKUmg3yRHXTLkg+s7VBGmR
         KvaH3XO2eJcnO1Ctyhs5vxNrCf3j2RxhXzOP+OHEgXGJSxO88VkvrreLPRkxMlb8GDDD
         e6UyJmkAj/zVDzwQRw/6QfLqqndnYAnaUCpDdFcqzfxu9hZHaMYg8Ehl+uuqsDEmdIko
         mV20h9Emxu/rTLZ+K3gdY/RRvZZSxJS3buCidT6ZMDNJZfPepi3XpWVMDod2i8jTPKo6
         1uqg==
X-Forwarded-Encrypted: i=1; AJvYcCV7IyA3Wyb3sN01hUwoR4ft63gYuFurlyvjdoTrjYGMICgvvr91LLw+axnvDMttdKgDDtJ42Lzdr8M+@vger.kernel.org
X-Gm-Message-State: AOJu0YzvY26mY7o2PrRPshher4xDkP61Ae0vchz6bKBV1H8vr655CI5N
	bihedkHuHPpVsSGX55rpyZFI2SUkUIZs6cjfGJ4tATaRJDd61QyFsJWtOZ+ebKMPtcGuP2bHbOK
	8PAXz/UTOrMGjtAvgxFYR8zr5TsdgNxKVCHU6MPFbJLUJ3wRGJuuYXab1uKUyDRVW
X-Gm-Gg: ATEYQzxLtr7nbB4a9JOQVxeljtUdKzyvzFxvtFtB+jC4RLP6f6B3nFt/BOK0WmwjJeR
	xjsrkfyqeUq7hJ0rzdCp7VKPAVXIzqPFhaZyCxPb4Zrxx97faAKe5DZYj8UoPfUvGNyzfJmrAYu
	AcKDiWr8ak4iwo8kY3B43JEh62Zr0hW/RVDEPu6PF86jqf65WqPiHDG/jIVsHoAu3Aif3/XegPM
	KvpZutDnGiJi1fV9w7/OffyCCWQ45bF1rJAf91pBfxlY7E8+qIe/n1wQluXdQ5Ofsg3UCm/a2mY
	spLnlm9tDvb68HgUHIiwp2YX5/XEmChiyfKRTm8fwyXvLsqI8jkm8rzYcoCl4CR5+RQoBXeQJ2M
	i792ASTCES3b/mYeL/TP9rrR6oREHF3d+2KAOZoIspwKpu0zhNgBQGrtt6zEegYwbXfwZSgpqZf
	BZi/1qavqUHxmlliPuStuioWzCMDlg2lrZjlE=
X-Received: by 2002:a05:620a:701a:b0:8cd:85e1:e214 with SMTP id af79cd13be357-8cdaa88cfeemr775786185a.37.1773389668241;
        Fri, 13 Mar 2026 01:14:28 -0700 (PDT)
X-Received: by 2002:a05:620a:701a:b0:8cd:85e1:e214 with SMTP id af79cd13be357-8cdaa88cfeemr775784585a.37.1773389667811;
        Fri, 13 Mar 2026 01:14:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15636a96bsm1409223e87.79.2026.03.13.01.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:14:26 -0700 (PDT)
Date: Fri, 13 Mar 2026 10:14:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v4 1/6] media: dt-bindings: Document SC8280XP/SM8350 Iris
Message-ID: <ksk3hjyauhbzvytvch2xip7kusuicnatbw4xlmg7wtfiyatzpv@y5q7xjvl7esf>
References: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
 <20260312-iris-sc8280xp-v4-1-a047ef1e3c7d@oss.qualcomm.com>
 <20260313-resourceful-saluki-from-sirius-f4e1be@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-resourceful-saluki-from-sirius-f4e1be@quoll>
X-Proofpoint-GUID: l4ax-3u2XSeaqFYZX7wvqTDbFWVAvXl3
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b3c764 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=yUbFqew-2eR16Ho47hQA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA2MyBTYWx0ZWRfXxhppDVBc83qF
 xftnYIWlzqpQqGuNer5CnsbC1Qds2z5G3x5IsgUm6/vuxxh/+veA5YS8Bk9y6rlFcYRKcm4vRiq
 +toUx+10/urKiiJa/e1sOBZbCV6VhMPXB2ICfYhJNCs/9rLXomR6bifq3C+aKqVjJwDfTAdyPeS
 F6w8tVivYCIjwojylqWtH+JPzf3SMri5IUvKrgyGqCscv5oty60Jh78vsNK1E6PbVMJKL+XO2iM
 TXJcuSN7vjDpxoLK2Yw9X8BJQ2NAvSCkmIaJrLC10rIH/BPw0+qFLHXChJXLw6Nbhzn8taEGqYr
 1wJ7Sm2pS6Ec4Sz1sSu/sJJq+vmnAyDa4dqsWGg1hLlMu2huPO9wrG6jnZvr8uSKTRJ9UmtNYUa
 IxGdVZpwN84/6GCbLyJgx3SZGa2R00KuR6JEYiANupATkZEyKZnDoMXWM9f6ISDg05N0hx6XqVV
 TezkeV/38Qkgxv24+BA==
X-Proofpoint-ORIG-GUID: l4ax-3u2XSeaqFYZX7wvqTDbFWVAvXl3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130063
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274990-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C432527F804
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 08:55:00AM +0100, Krzysztof Kozlowski wrote:
> On Thu, Mar 12, 2026 at 05:14:22PM +0200, Dmitry Baryshkov wrote:
> > The Iris block on SM8350 and SC8280XP is compatible with the Iris
> > (Venus) on SM8250. Document those two IP cores, using qcom,sm8250-venus
> > as a fallback compatible.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> > index 43a10d9f664e..3700f8fe91cc 100644
> > --- a/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> > +++ b/Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml
> > @@ -10,7 +10,7 @@ maintainers:
> >    - Stanimir Varbanov <stanimir.varbanov@linaro.org>
> >  
> >  description: |
> > -  The Venus IP is a video encode and decode accelerator present
> > +  The Iris2 IP is a video encode and decode accelerator present
> 
> Why Venus name disappears? And why now this is Iris2, not Iris? It's the
> first time such name is used. Just call it Venus/Iris if the new devices
> renamed the block.

SM8150, SC8180X had Iris 1.xx. SM8250 and SC7280 have Iris 2.xx. But
when the bindings were written, it seems, it wasn't obvious (or
important enough). I will change this to Venus / Iris 2.xx

-- 
With best wishes
Dmitry

