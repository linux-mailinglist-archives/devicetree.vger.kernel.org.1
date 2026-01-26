Return-Path: <devicetree+bounces-259609-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2K9iEDGqd2kZkAEAu9opvQ
	(envelope-from <devicetree+bounces-259609-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 18:53:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BFB8BC26
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 18:53:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 95075301468B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96FEE34A783;
	Mon, 26 Jan 2026 17:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ozYJbgBl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CPsEgk0X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DF7334C1D
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 17:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769450030; cv=none; b=LI//Qzxt5KXBLUcxKNUXgShp/OgBpVQUV8APUaBbiqarNh1lyDjR+KTrb5FfKklBH9c4Nz7LMWlZW3ma3TI/8BHENY6WP5/aLgTytzS3zGUtD2aQUK8o6cQzaMpHSRIP4/VMxISpsY50f1pv/c90+13Fu1cFMFCTqfG8J+X+YRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769450030; c=relaxed/simple;
	bh=68bu/A4u6F0RqdRU4MkCUS4Y0YuGhpHEKejqlCtSujg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kSy/b2yOxMAu+r85hmhvuzYWsBCmXk1IpQtMx7ZG2lsoRp2S73jGYBXhtpkpAD8p5B4Jm77eXxXTD7GD7Xtljqa6qkIe6/wyh0co9gwanCDkhq7BUZxfJE4F1biTGyf0xv4r03TEKDeSLd2tS/hKbce3okocXtGolxzAIqU/t+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ozYJbgBl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CPsEgk0X; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QHRVeS493215
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 17:53:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=La2IZRFynLoGxCtFNU0StQ3n
	vumaGUyS2ZbSeRxbKnM=; b=ozYJbgBl0CVFus5VotZ3kizusHuThmqt3mmNRaZB
	yuVbXmX4wQ+F5RypEEECGU1mIgqii5ErRbLJy7o4fQuhMLNUBxgR4z6e0aA2FvOt
	Ris/w2QqBMhquH8rm4hqCe5KepwTIuwG5Labk5XGQI8IdOWuXSH9NANUw+Lk3OEP
	4McHtYRzv4dOMMbA4cF+EhmJtq/TMjCwrkllS1Qo2aie//i8KhWkGNh36Sduy6M7
	upoCMvEE3wueDHroPJKYel6yItCPRrW1Fw0HWnRWS1pfpORbeg179267V+NYgken
	zqdytHMp+do8qWpvebit6N/0oIZWSqOdiuxq7A7dRS9fLg==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq6uwcsx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 17:53:48 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5f167c4ab16so14895230137.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769450027; x=1770054827; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=La2IZRFynLoGxCtFNU0StQ3nvumaGUyS2ZbSeRxbKnM=;
        b=CPsEgk0XcIdoJx3V3aKesIoyRShUEgpjmda00AutsNagErrA9423+pLt9DX51gzv2p
         aIm2HFZi57civ8/YImRLL41VqZ/XCYnRCzp0qpHnJnnuInx7XS0HfsvRWOuQkMoTHB7H
         IJzUVAy1XItasni2Tjo8q9wOsox7azPsPXe852c2wZeucDSkVQEKIIWTAv/7BcCeP5W/
         de+8JoiqqvxgMOyXPH1Wkvek3sz01FXcoOMNF1Ef9QJTbYfTHqvhYxCUdP6N1rMSVqaG
         AFUkDaVWXsOvbl4U9ZPkvsdmdofHeotfbR2snuWiTCJp1wF0eACwlPhBhUkUltYaynMa
         oKkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769450027; x=1770054827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=La2IZRFynLoGxCtFNU0StQ3nvumaGUyS2ZbSeRxbKnM=;
        b=U+wBgiNN5IsyQsNLE6PttyNdr13+10NRSE7VW9u+uQZ5OJY8JUdQpakcsIsPZ5Hl1B
         6+C1sX1Rtn2AWoc/k3scOMbSRVJN8UvmmsTIhqp8OvtYld9jZgv9yOwPRID+mUf9+WyB
         xxamPQj/6e92BTZ4iWno1E0gRqvo4lrL4DhrsP5qotEkSJH7zOI/oMA1+JV8ebUbUGec
         ulDG33aN+wqkkWQdSCT7/GRWe5Pz5dtSayfEeNBPsoasPWxOInzgP977Cqhu3c6/x5u/
         jFaDwMKt5Kz98RsABt14OoZm2VgylBdu4p7BF/CR957Xi2CBdvEFAK6rzYv/520yDW6d
         Dgcw==
X-Forwarded-Encrypted: i=1; AJvYcCVZkgsVkcvo8A1zR7qWwvzYOnAGE/yMWhw2fo7RVmKm5Hra4dWm8u013lchteK3HVVjAAChC4wFuCbk@vger.kernel.org
X-Gm-Message-State: AOJu0YySG7ISoSwY4ztCf7Z4CY0m9uoOwkvxebU+HtTv+1VB1cfRU4i/
	UZ8ttJ6g2KdaGPbtKkZyHpoWqZZVbwEQmeXYTVhHG66klDDlk5ULythQaHu5OWOxTy7RFwx8Cg9
	njj1+HlRtHARzClJ8EUuIdCSCjaN6ajD0Vek9ch/ueowsl2axakzewz3uKBfaKPLl
X-Gm-Gg: AZuq6aIsvt2Hf/ebkc/4DSPnwztcl5pHxh4P9C6xF9PEsBuF3Z/gaB93tZmIAkxsgRX
	nin2WrZZWEMZc7xihCkI/0eZFfjdkhG6URKRe3Z9St/bVKEnT0kOIYaIdoW2jJjnIX9UYpahXB9
	p/LTJzyPOAWOuezwNLhV2o6V+m8Cat45ciG6wy22yUDLkfEq/3lx0th+RbY303FC4eBlDg1lcDb
	WMYG5KwOdJBE8oTj80mnN8dhuoyXu7Tfv3fEgbIeaoItfiEl/axk/CrQ1SQ1a60k5DJ+3HaI35m
	XQQSVXLJtp5MQLVdExVLQIhun6JjXrQoCtRf67ZHsmRSUawdOhdv3/+HKKPLGTZALdbRaLX+DMt
	+ueclAT/vv49CRSU7G5TntLbACdmCTf9bE7naUDeTwZyDt5sIbaJseibM9+LyGQzBF2e/5sSxqZ
	WJDBDn/wcmCpbYS4u9nacw4V4=
X-Received: by 2002:a05:6102:304f:b0:5ee:a8c4:18d4 with SMTP id ada2fe7eead31-5f5764ce5bemr1796147137.35.1769450027399;
        Mon, 26 Jan 2026 09:53:47 -0800 (PST)
X-Received: by 2002:a05:6102:304f:b0:5ee:a8c4:18d4 with SMTP id ada2fe7eead31-5f5764ce5bemr1796133137.35.1769450026988;
        Mon, 26 Jan 2026 09:53:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de492cd32sm2836715e87.100.2026.01.26.09.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 09:53:46 -0800 (PST)
Date: Mon, 26 Jan 2026 19:53:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lijuan Gao <quic_lijuang@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: talos: Add missing clock-names to GCC
Message-ID: <pjambgdh3fh2ypbun5qnmcpwrz2ajbiulcz64g7epegjy2j4eh@a2zkzepj5ro3>
References: <20260126-topic-talos_dt_warn-v1-1-c452afc647ad@oss.qualcomm.com>
 <tw2lcfppz6lrmnpcfm5yh5j6iln5amedo2fxbyapx5ralclhjl@tyiretqzszcm>
 <5227ff03-3008-48d4-a22b-f9a9b1d9bec4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5227ff03-3008-48d4-a22b-f9a9b1d9bec4@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDE1MiBTYWx0ZWRfX1tJh7wuxPle+
 ViWz/NdWbYOyku4S1KWdpi5IUMvLkjiVsFvujeVeSk68z3IuVBpkWjiS/8tB4vdbdYCY2fIE8Z8
 mEjhtGnU1z4QhivZDzvp063E2+321Nx25ai/xnUkUF+1Tj3Vso/TYwnVA0pZtb3CZYvcpdxDfT3
 KFh/qd+dEBRj1STA9icrUceA6LKw60DVGV9yytZ29EBMeFv4f07O8gaXoQGK38Ih+DK95in5Z/X
 zfIYQBZXfpaUYTK1qqcn4dxVFw7rM/9qJqi6NtDJMoKWXBM2BVnpLQQXc4JLMVgAyRYX0Q4DZLE
 1OrxX/6HyTG/b44kcXzPCzled010sX7nhhrVvNnpQx0yXo8GCx9NPCj1s/G5TIZ6midMhSuacq2
 xHWqzcOgTMxT7FF+VGzzyOA6vXI6rwuvZvQOXAkCkJT50g9DpBDIEm9aKiYw68v/I4k6NB8Cz9o
 yMQ4WridzYq85B9kaqA==
X-Authority-Analysis: v=2.4 cv=UqRu9uwB c=1 sm=1 tr=0 ts=6977aa2c cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=QtkbibKGHj-dHbRwVhIA:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: i6T-MCdtRX06C0Kz272zvpYajyBzlMVY
X-Proofpoint-GUID: i6T-MCdtRX06C0Kz272zvpYajyBzlMVY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601260152
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259609-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A8BFB8BC26
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 02:46:20PM +0100, Konrad Dybcio wrote:
> On 1/26/26 2:33 PM, Dmitry Baryshkov wrote:
> > On Mon, Jan 26, 2026 at 10:45:03AM +0100, Konrad Dybcio wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>
> >> The binding for this clock controller requires that clock-names are
> >> present. They're not really used by the kernel driver, but they're
> >> marked as required, so someone might have assumed it's done on purpose
> >> (where in reality we try to stay away from that since index-based
> >> references are faster, take up less space and are already widely used)
> >> and referenced it in drivers for another OS.
> >>
> >> Hence, do the least painful thing and add the missing entries.
> > 
> > One (me included) would assume that the presense of clock-names imples
> > that the clocks are fetched according to those names and become very
> > surprised if they are not. As such I'd suggest fixing the bindings instead.
> 
> The reason why I chose otherwise is in the commit message

Should we then change the driver to also start using clock-names?

> Let's try to review bindings better next time


-- 
With best wishes
Dmitry

