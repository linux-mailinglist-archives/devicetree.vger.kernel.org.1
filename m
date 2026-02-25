Return-Path: <devicetree+bounces-268362-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGRvN/7xnmnoXwQAu9opvQ
	(envelope-from <devicetree+bounces-268362-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:58:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A046D197B3C
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:58:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0EC4D300AD58
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E012D3AE70E;
	Wed, 25 Feb 2026 12:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S6rBZTr8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kbRyvgBI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F9038E5FB
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772024313; cv=none; b=OeWjT0+BJwFgLEdvNNVFHxlFPYR7YQcQeknyLTZjWNL/py9suCazZHXE7mjrAjjQLj5wmtFFiva0dcrplTT8yy/PYDtLzfjsornDGFGW70MLrq2dM29q1OxmK1lrJZJawhpLeH3Q+bgYJIFkXHKyrt/G+yGrjj9nutSUwknbdiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772024313; c=relaxed/simple;
	bh=rsrJV9JSs10oZW/p2B67CK/bbFR/ySGiAGre+fdGkZw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D3sJdK0hiTRIYjl8KYE387brdTzOFXLwZMrEBP2alYpY7v0qTL6R9uCL0ZiTloHM5p3xPZU/dJXqOCQnuoLXc5dk9zByFU2SmupAtcimjm5qpuAM12WntZT4VZ1OIdWAQ0RytCKymdmeh4TTVDT7lypf63bHTuO6yvmU0bsVi04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S6rBZTr8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kbRyvgBI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9Ru0b3056467
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:58:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qwtkGTva8UpevosmA9Ul3qK787+uQN8ysaiDcYLDNr0=; b=S6rBZTr8Zjxs9Gtn
	UdNivAqShe3BsUS2ZGthhRKo6Jo51V1PnP1JCAk7d4saqZK5WlI39w9QH9rPkMo3
	W0Q4G5NPRIfZqJlLZq+p0SVhIB5sHnJ4Yo1LRLV/3cD0JFrnW/WIKuJcjumN60hN
	PZgaLgDu8eL3CTn7TyFTDb5/5ysOQGpLynTC95ytm8xUEop7ruhoR5xS3SCvMkBC
	myHqwnNMsiIVzjB/+EiXwTDcwoeSzuiBuCSelHaIP/BcDD4eoHpcayV+j9WWCmSU
	xYH5Nym8xhsX/RxK3vLkCicTc9NCplK4yZv9xCRud4osH8uMRXJVdOuyP9fS4A9w
	TEchKQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chx39gp30-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:58:31 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-824b42b8a81so25060833b3a.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 04:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772024311; x=1772629111; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qwtkGTva8UpevosmA9Ul3qK787+uQN8ysaiDcYLDNr0=;
        b=kbRyvgBIQzWEO+RDMMrPdI/NRQTeWWDTsjyUTU89zl6JCISawB2Shv3W34J7jjJeRs
         WA/biO1gJ4vFSUF44cEOsZO2WTNJc9WRwYdhw8RKIJ6w6AYns9fAAQlQhkuQ9pIWLEuw
         70fSap9EsbKTIRRtlsViVFXHDu4r/C5476btEJcRiIUJqlzxf6AiwNT7jYjM5leGn/sN
         tVXvAXdck2p1QIJhXMNIlWtuStnUPrACjXEYoERX7mi2suu2lXZKifFY2yhpTy2uJkof
         8RgnW6Afmi90QzcXVXcripyPbyFR5qejCxQRIsk5P9mtIofdFiVDIuubuacYyGb2yLYW
         HO9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772024311; x=1772629111;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qwtkGTva8UpevosmA9Ul3qK787+uQN8ysaiDcYLDNr0=;
        b=KlEjERe8ewxZ5cHEwdUv0XLJ7EFpo/H1iPWnWg8peMrHxI7y1MhC4Q32Ei1YBLhyA0
         6GUkFG15x0Q/bHw59XYbj/Za+AtW1dy9f3opUMjCAKrdMBGFWhv0zO5xfM81dXlOEhTL
         sIxV/rDI6eXyhtKIiT679SXGWhkK8/Td/qWYvV8jGNBzyC21+PLdU9HSlcjWrz+thiRx
         qHmuGjpFijXdWe7wkLhjwU8QHbk3zRuXdeB//CWjug6+QqH07lvcjrBFi/5n9T024gDr
         efDLuoSX/CcGlHs6I7BsrPOdlzEhlBbufiCJIadJIY0ZEs8t7f65EgSAD16SxrdI9wYh
         ziEw==
X-Forwarded-Encrypted: i=1; AJvYcCVNVv6N7p4HyVhMMT6VzHuKiZP5x3Jyp+ioa+jz6SXKo58osyDxoLyNcg4vFhs8bU/VBFztXidXF5MJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwCVFakHm+PXtBGV+Kh8YtaAY+yzH2KVMd42x1CyoLlYqYSWjWB
	loej6PP1ptBKpouqjvlsCCm3VshjFXnG83/uTxGWCszTXnVwXfa17Hv2kDK3J2FhomwJkKY2VHM
	nSohErhhxbeiM3YeJtUzCXg4lfwte4i2CUmQpqNq/dC4uJIKMU0EySDP7UTWElN+R
X-Gm-Gg: ATEYQzz5jNKIARaET/BfCAkfGAwj23nKOnDQuWnOgTioUFdnxhrOT+8XB4I7OXuPpzv
	Bb/6NR9QUbWLQZjtsuRke8CoWHslMmxfcCIfCMpYahC4G4u2pJLr1F+UWDxo62PsjKMCqtZwa9Z
	HeHSBKYYaSp5ERDRmA0zwUic6tUs3Hli8IyvIN4N7/Y5GDx+IQypCtkJlIBiB9QOEpXdRLLLF3i
	IHOYwlonCIYP2Y5aSs5mDO1s+aLpCOfyhMGX+IRhubD+dRPtqCD6GmggYOe2rYdDsMNf4Vpy9ME
	NeRZDs6CZ5zeRvX0WsXOgN8A5zijtBRyeO+CbB3EKeGESDEqTHJyAUQJtYF2YTrLFPU/v3ct/Ga
	iCCywGpvL5ll3hnyHgwXe3/iXBsPakfP0IX/OB3NF2dbOHXReVROp0azPaEU=
X-Received: by 2002:a05:6a00:4b11:b0:81e:8e66:38d9 with SMTP id d2e1a72fcca58-826da8ee310mr14805873b3a.17.1772024310901;
        Wed, 25 Feb 2026 04:58:30 -0800 (PST)
X-Received: by 2002:a05:6a00:4b11:b0:81e:8e66:38d9 with SMTP id d2e1a72fcca58-826da8ee310mr14805844b3a.17.1772024310447;
        Wed, 25 Feb 2026 04:58:30 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd8a55d7sm13750737b3a.46.2026.02.25.04.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 04:58:30 -0800 (PST)
Date: Wed, 25 Feb 2026 18:28:22 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH v6 3/4] ufs: host: Add ICE clock scaling during UFS clock
 changes
Message-ID: <aZ7x7gG0OZEQSKVy@hu-arakshit-hyd.qualcomm.com>
References: <20260219-enable-ufs-ice-clock-scaling-v6-0-0c5245117d45@oss.qualcomm.com>
 <20260219-enable-ufs-ice-clock-scaling-v6-3-0c5245117d45@oss.qualcomm.com>
 <f984c9a0-9ce2-49f9-927b-e69c26f69176@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f984c9a0-9ce2-49f9-927b-e69c26f69176@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEyNSBTYWx0ZWRfX63IhxT4b7FlJ
 BCb0T7dr4qdJWPlsWcOOYQz0se3acxagV7mHbtkn64StPvZg6RxoEhT31Pix/B+YAAp+y62jGvJ
 HaovU+pAZNR4hLMrVAP7JCNS6gJTt5OKhG6mPzCWfjdwluYu+DVvO+dlyoouQ3QAKsdhW85sLdE
 i3VmCg5Z7Wo1QgP5MO2hS2wC81gjPMwSC7/9pOTtEMc047kIU/chwqIYo8an7BheTcm+ZO+h5wE
 mA15bO9lPudO5D4xxco+w64diXeZimruGhxCN50hOXIIwwTYX4oslNkTPlqnjjMSdZ+XHhib95p
 QH5m89fj9cUiiJ1AkjU4ikL1HmFjwKglnJEPYS5QOIJW1stySch6Gc6wso89CcdIOk/E04yHOVG
 H598BSVtv5AeSyonHy8Qr4ZjmaFZNiR/ZEaTwHW8q37g+3hfwvLeC0SjBUCCFl/vBtxi2EoWY+2
 BEcfx5zpsMR1HwmuTDw==
X-Authority-Analysis: v=2.4 cv=FvoIPmrq c=1 sm=1 tr=0 ts=699ef1f7 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=p40s0NTFcljArWS5TpEA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: YGlKOVQowQbBb7c7QW7RFOjbmItZT2hx
X-Proofpoint-ORIG-GUID: YGlKOVQowQbBb7c7QW7RFOjbmItZT2hx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_01,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268362-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,hu-arakshit-hyd.qualcomm.com:mid];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A046D197B3C
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 10:00:12AM +0100, Krzysztof Kozlowski wrote:
> On 19/02/2026 10:39, Abhinaba Rakshit wrote:
> > Implement ICE (Inline Crypto Engine) clock scaling in sync with
> > UFS controller clock scaling. This ensures that the ICE operates at
> > an appropriate frequency when the UFS clocks are scaled up or down,
> > improving performance and maintaining stability for crypto operations.
> > 
> > Incase of OPP scaling is not supported by ICE, ensure to not prevent
> > devfreq for UFS, as ICE OPP-table is optional.
> > 
> > Acked-by: Manivannan Sadhasivam <mani@kernel.org>
> > Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> > ---
> >  drivers/ufs/host/ufs-qcom.c | 21 ++++++++++++++++++++-
> 
> 
> SCSI/UFS is not respecting subsystem boundaries, thus you must not
> combine multiple subsystem when targeting UFS.
> 
> Please split your patches.

Sorry, if I fail to understand the context here.
This patch-series is already split into 4 patches based on the subsystem.

If the concern is the UFS patch mixing subsystem explanations,
I can refine the commit message.

Otherwise, if you expect the UFS patch to be sent as a separate patch-series,
please let me know — though I feel these patches are more appropriate to
land together as they are quite related.

Abhinaba Rakshit

