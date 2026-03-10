Return-Path: <devicetree+bounces-273445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNe0ORLxr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:23:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBCB2494C7
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:23:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DE8E4302FE72
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D954037AA6A;
	Tue, 10 Mar 2026 10:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J7OfdnNp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PTfG6zDC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB48322A3F
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773138192; cv=none; b=sZaWsIB3lQP3RiVb8D8FLqxifuvQaChUs3UHaBSl6urTPYUSplBvugqN9un0rPpe90lkz3Anns7WxIcN+AgK3zCS/PGt0B0c/8Qb888qePHxu1fKlMEF0JKUR2DwyLHstpLL4vp69dabpcirKWTarUdOPTvd0DbSnbj9hXmPfaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773138192; c=relaxed/simple;
	bh=eSqcW/Jg5ZXtDyq4BocbbZAjQ71kRdMdaBuPp2gnW8Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qrXrNNNarkGsgxyVz3fHpyNhAnRJWHCwyuL2NscFTUIgH/c/Ph2potcgBfu5Ir15GCzSmbd1eo8EEii3t8CkYMEVZyK6CFUAtkMZvnhbZQlYZAV9u/whcb5ASirHp7w50JgKrQLRP2PWB3rfcz52oJywvec8iqrP3vtJe2xQW/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J7OfdnNp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PTfG6zDC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8phgF3690833
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:23:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1NY24K/MIJWkUt53EdM714/u
	AFIpW44Smn7AbJecbIQ=; b=J7OfdnNpsh55aRTxbhsMkD3AnqiI4QdZ+Tp/a5n/
	xLPpKxXfCyHbPYNwi6Vk+uhEa0yS+c4qF0nJAsPQWraHMa8LbRbMtB3273e4TM2m
	gBqfWDfCZNCxJCJ9KWjIgPpNkZStnPzDYT++EIagcBq0fCDi7/Dfzc5QVF0SjOCA
	N4dwuIaH9TbKDH2GqSljObyEw2ND4P891EQD9Z/UQ+Tc8hKqiRz6YVmn5eRTnrkJ
	8ZFLZJsJzuObFzZeSjq64lEkamw+im0ocndG1zMFH7cZ27N1ploV5z5vYis1VbaQ
	CrSTddAckICTD/3wESSWOscMuLasV+n9qsm4mDDhO9Z+OQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctg5ngc0a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:23:10 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd849cd562so1256205985a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773138190; x=1773742990; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1NY24K/MIJWkUt53EdM714/uAFIpW44Smn7AbJecbIQ=;
        b=PTfG6zDC6s4Dr31kg0fTPPUTF28dTm9MnExmFPDYcvqUiLL5GX3mOZOe6HHloZC4MF
         YI4pGn813ab6HX7km6mNkqYQnSznlLilnI2fLkg/1DXdUO0cFnYRq0pngCPrzoe8LrQM
         V6ZyCvUa3F+pKAbLuBTrofMYGwcmdspQQjcaX43gBG15COQgLxCifN31RAZTSg2JqlsW
         1Z3AiuJljHx0KbbEZdTxxl+jbY59pHHNgKNgm9oUKc7r81+VoPXiVTV1BX8OkHEiWxFj
         qTPKFLbExfGn959EmF8uXM8xENwHi9uL682F43gtCuNC1Vrga5PII5aTEODhBNhPl0Y3
         aOPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773138190; x=1773742990;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1NY24K/MIJWkUt53EdM714/uAFIpW44Smn7AbJecbIQ=;
        b=e6I8fZD+p08zss4qRKXJx+axsqP5iTieczbkjzOOM0ls3o/ZsotDIvmpYGSjbf/B8a
         lXhVXvt8wTP5OsAw0+SQihngYjz98HoAR47UVd3KRJrRxqwaLiVkw6IamjOuNaCVpQTY
         smwLBMj9Omuyx4R8BaNFNbX8RZYRCEss1BVVpRMmzgzK9frFytmauz6/9zHMohXgzwNS
         hIJAVhhnsIb9ebBYbHzFM9RCOYV8o3LwPvio9+UoYP1/8KfgRkDOgqVuYQtRPznoCniz
         gBhvkiXPLbmx7erU3YXgYkaRcIUI3DqF1CdDHARs7HfdlvWxnrD69RezLn40oSxXf3Jf
         Czlg==
X-Forwarded-Encrypted: i=1; AJvYcCXlgpe4JXW5lrpnfaIkCVZinpijDBmB5WrLNChHFct75BkhNPnRRPMIQv5KJ8Zw5xk2Y2ghDSE6n94/@vger.kernel.org
X-Gm-Message-State: AOJu0YwKyO9QorRYfaQL1R01hdvPv418serEWuyN5JKt/3CrJTT9lChm
	oYiZgIyvJAnWjRYE+sqeitS+teCnl7LP/qpP9Zu9DOiQngcBxEna9aoMVbo/n+MwXLz8MuGula/
	d9Kq/TDB0PJUMIWsMEN2Z3l6BUTbYUZMDQPqxnmUoXOvdsPXUgBNuoOVZcj90No98
X-Gm-Gg: ATEYQzxOadv9IXFTco8H+WJsU3jjg3ZU4FS1qaNl6NCKnn8tbquHyhSm5HwkmYbWC6N
	6Ca6aKWDHJXCzCqdpMhTMDF+KhkyKtmrT2EIAQydOmPalInPwPZ5aw/BK+hU32znpUdd5CwEtm4
	iWowgGaGKO6ktwqdenItpGd1P0Tum8+PHgHa8xBN+KLUsYOQ8RVOe46wLycBSRfYPzbVXO2On5m
	OS3sWD2Jh/aVt4rr1ItoopL1FWu1jy06Z3o68UET+dIfzqMxI4c01EqVLuNB15SXMUtHn4Xrc4L
	talcqnVuyMY1H9tfxG8bt1e5m9oQvAE1FUvP0mP5HRWbHNTgZCsczf1YdXKqOjNPlsUdzWKYgdn
	Qym+d8JBTXimNKDHjgbpaUbCMv5R+E77lwNbO
X-Received: by 2002:a05:620a:25d0:b0:8cb:4289:6c3a with SMTP id af79cd13be357-8cd6d548a09mr1800612385a.74.1773138189828;
        Tue, 10 Mar 2026 03:23:09 -0700 (PDT)
X-Received: by 2002:a05:620a:25d0:b0:8cb:4289:6c3a with SMTP id af79cd13be357-8cd6d548a09mr1800610085a.74.1773138189155;
        Tue, 10 Mar 2026 03:23:09 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae46353sm40465717f8f.33.2026.03.10.03.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 03:23:07 -0700 (PDT)
Date: Tue, 10 Mar 2026 12:23:06 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: firmware: qcom,scm: document Eliza SCM
 Firmware Interface
Message-ID: <dqgcqu2wcskl7rxpv4gf2ltunopyjd2cpougkljga6ogih5x42@hji7dtp36cvu>
References: <20260223-eliza-bindings-scm-v1-1-c88643112dd4@oss.qualcomm.com>
 <20260223-flawless-shrew-of-skill-efe049@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-flawless-shrew-of-skill-efe049@quoll>
X-Proofpoint-GUID: BvpEihqCPCUZbZ4vfCLfUH5RA7s2ZDyQ
X-Authority-Analysis: v=2.4 cv=ervSD4pX c=1 sm=1 tr=0 ts=69aff10e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=zLld_iIxUUPrxZvK4H0A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: BvpEihqCPCUZbZ4vfCLfUH5RA7s2ZDyQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA4OSBTYWx0ZWRfXzHE5lwRIKeVd
 BE11HNDsYoHJoWjm1XTnt6MvIwdmisrBoTYWNNaKMNR11ssddN3hu1Za8W9PWExVbai10Fo47i/
 rZNMiRv0/fi7RWC3Z9UN/Jr8rgVZpfz7Guke7zSBI2iGclDDrOWiUnkpACSlSlZ0DqSFRbVLM2q
 AOjS2UQjPCQV8a9OtVP6TAjj8II9lzaNBnK7x4pBYwQQQ9MaaByTGaJsqsPUnLBQdDLjZS2Lyh5
 ONCDlN00gj+TZ4mRPK62kdX6ehmFj3Ma6GbF3/U+x3ckq7OYgZnGTsmmMeAJEAGomkuBUyffAn4
 +80M79q4xTmIIwsYCZs41r+DULCjxwkRXxWrGz+PX2XnZQc1CjnvxvKnlPDLjTccDYmFtvHEVgW
 ueNrTGmkYZ1l0WBfAUBDmcOF5sNXLoQYp78vSu9e3iKAAwS+Lhi3aFGv8ePe4GnMQbsEeJHP6oi
 DU+7gCRh6tY9/9cOW0w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100089
X-Rspamd-Queue-Id: 7EBCB2494C7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,quicinc.com,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273445-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 26-02-23 11:41:31, Krzysztof Kozlowski wrote:
> On Mon, Feb 23, 2026 at 10:42:02AM +0200, Abel Vesa wrote:
> > Document the SCM Firmware Interface on the Eliza SoC.
> 
> So different than sm8750? Then you need to explain, because patch looks
> odd (incomplete). Plus I am pretty sure it fails tests on your DTS. The
> point of the bindings in DT schema is to actually use them...

So as discussed off-list, schema doesn't fail with this patch because
interrupts property isn't marked as required. Not sure if it should or
not.

Anyway, I'll add the Eliza compatible to the if-clause for the interrupts
false, just like sm8750 is and that's it for now. And I think then the
commit message will be good enough as is, no explaining necessary.

Thanks for reviewing!

