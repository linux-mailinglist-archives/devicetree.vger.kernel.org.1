Return-Path: <devicetree+bounces-260050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFdLC+XweGmGuAEAu9opvQ
	(envelope-from <devicetree+bounces-260050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:07:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4FC982FC
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:07:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C35173017247
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7092E363C76;
	Tue, 27 Jan 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GvzjW8R+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gw8n2ZSs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47A436402A
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 17:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769533652; cv=pass; b=jbrf4NZGlOj2E0xfScp+P7r/csL9NblDOAjTfwxulkhJVwaZceX2mDPzu+8VNhWbsriu91dFwJHG28toDx8BD+uFKryOZ7/+NczMkDFGKRIQe0ZKlg3ap8pfB0yLKEv8ZMTTEWm6FBPk9Iun4axdgsZP5baGGKZQg/5E79PqZBA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769533652; c=relaxed/simple;
	bh=ohuvLcnMnvostswXlSUWGokrohwCEeSwLY0Aa8Bi2lA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fVbT094fgMBSJRY3CDXa3E1j8qTpHEXxbKUkRkqcMRc+rJGHB8HenuHkmgMWsqfGds/kxkn9RxRKRFMxaXYYvRRn9P/ZJys9M7cUlOzs/MIvgJZoN7yt01DNWoA7nDqJxBQXz226G4bEy9NstFpDYiPrJhbgnPisxI11j0iOS90=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GvzjW8R+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gw8n2ZSs; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RH1Yt0700315
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 17:07:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ohuvLcnMnvostswXlSUWGokrohwCEeSwLY0Aa8Bi2lA=; b=GvzjW8R+L/Z+9CAs
	qM0WJIdDGqkaFC9DhBFtMUabCfLFwesQqnMbxfJRu8QAEf9EwNQPzBRZ5CTv483x
	VpV6xQQn586PB4+yv0CEvw9Flo63InKCKFTUW4KtX8/TYQY/hrbJEhJoDfKuuc6l
	XY7OpxsOfWkr6YOahcV5E9XTuMkCLWYNg3Hi1+QhZNOrxmp2aMZUjeQGt8CB1A13
	UkGhvd2wTiEVEYNTZNf5OSnWfkTG6GSFA6WQhXXh4niabGRFMgyijWaOrOiIyGtq
	EZWFK0IO5UUPoDzCH6mhnOMp3/Y6S/bP1qKofUpJbPIDwmIIl5Npc7vIXTitKl/Z
	u4wFJA==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxew3urfe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 17:07:28 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-6493c3adfe4so6941868d50.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:07:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769533641; cv=none;
        d=google.com; s=arc-20240605;
        b=JQF/vYpsYFXqWaLKZod7DZtHWW+qAu50ouTDPN4YrLb+VUFn15KJRhVM7EveWTRl8z
         97MLPelFgxhzu0hkDCyaQGplJ7+urnWPiWSkva5ecvXhdwGeQwQqNGpTPLmFw6OZR6Rz
         uTDk0Tk+guDndSymKNj7spGOoGO7uH1SLLZr60Ro1plxI9j0mBrUcTVaEJqLN3hvlu4J
         ydUlJIFJ7Te2UAzTuu+/Y/siygb/JO5IgdMYEZsxC+0UzjSNCEofLhfDqZbgmk6b2jrx
         9aDOhqQVZdX8YLZIqo7FyfKvUUhvTa0OxJ6QbWFk80vAGReZhJR35LvjTgVM+DrTXsTt
         NbIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ohuvLcnMnvostswXlSUWGokrohwCEeSwLY0Aa8Bi2lA=;
        fh=eszW1x0Y6qKXDVEqvK1Q5cBaoyZPXKU19N6oc9NqmOI=;
        b=XWSFXQDN43g4o3Kt4PXRzAtp44i3bCA9x7dqbVF9Vp3v/BJFT7OLSYQvGudkqLnt1B
         KNvKhP8LGXGeAi8UsDewgrvwrntVHPdiqaBp7nJNqisKlsizIr6NZHl0jJv84auJl00S
         fpGngrVTax0sGs+5FLBtE5ESuHKOwjUC+OoYL+nu6Hq8KJpfq/MnaUZ9ON6TdtRnmejl
         9GVHby9/fY01eisVNLYr01Rali+kKo6iAKhl1O9IdIeDTUDnsK2w4UL86q4Ch5j9AJNs
         K+tiPivyncbUan8PFZ8dB56pJi8sxrwZS38PcaEwA22ZY/xatTxnwPUSNKVVQYWnpiEM
         ketg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769533641; x=1770138441; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ohuvLcnMnvostswXlSUWGokrohwCEeSwLY0Aa8Bi2lA=;
        b=Gw8n2ZSsI0usrYKBQkTgH/K5zgOUAD0FD6hnOFX0A3BQnJwYVRzvXnutr/ZgSTKn2+
         +/hMy3bY8dUF1rY4/4obUMtkVeO5/yZf7QY9MGPuLIo2UP5sz3RjUaZifyc0jhROO5PI
         LzH7RVsjjY8Vw8C6PnZYs8JJyxje0qgPumlmybDO9E7WrhJBO0pQ4183APUehMHo8CDE
         V9OZmoMJ5+O0cOxK8pUnKHIP7hOlZtni6YQbAA5HyXweDTU/uCLZei+X5SMo6zAmOXiu
         Ai9+fF25zSVIO1YFtnzHgnMVPOf+YSTrOk0yZNPxvN7Dyr7QHfcC126sPAtiIZ1mGVPV
         c6rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769533641; x=1770138441;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ohuvLcnMnvostswXlSUWGokrohwCEeSwLY0Aa8Bi2lA=;
        b=dYUrw1ydsyiz2j2pwPOty5HyAPtHuVKe1K775O/RoTsb3fWefsNbtyDj+WEA+IuK6V
         KZUkylKyzGuWbfe22CBhAfd932CWZwMTEujoNyZ3H+1nACda6vHprNUpQHtCRMB31PZ3
         FfPv3NL/cylRYkhcuisT3Dfj7OsjuRSkncXszu7wFmjJojmW1XHpoAFTykDC15mRkSWK
         xcXLDEctmp6nFj2BJ7KjFb7r5BoZC8Pfe7qYEnQ8xNZmm3l4D1S2BtEr1O0GSs7yZq01
         GpQ6a6FEk/OkoHeO5wxFDXH33lzKSRVKgfw827sZzldTqG7uFZXvhhh3vgD/jnn8H8eT
         s8Wg==
X-Forwarded-Encrypted: i=1; AJvYcCX0/06HkwDQrBErcmZ0kBHohRNJ843qT6tzlccsjS3RW5SIGp51gCnAquTka/URCmsg51txkrdw38el@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbdp2T+HUCfE2YJefTaCbNNheBn/P+fvAnWptHYl+lyWzUagmN
	DpknE2cLPdivD+p1KEVgvj9NF2Pwx5RecnTJacy2CXMTGGDSdour0Eji5cN8JeAsQwaMZ/02RqK
	CXGhhHPThpZyxPmOIEmfGKTujUFv/Szz1BpjfW1SXIihLiFOjjPS1nF5FWdXeR/KO8nA4jkzB81
	1PKIf9g5pZcxu32aNJBdKpnEByXPzub0XqkLv2vHk=
X-Gm-Gg: AZuq6aKr0Gj4a5co486pP5xPDAsP/sC6wu0K7Wc9NI6XA46UEoESh3psMtFqdYF5RA0
	0BBCAawf1roa7N2A7yvO0gGelylusHTZBiTAvZejXxszr1hZY9t0DCjeG3Ou0YvW1Rk2Yya5OvJ
	//P3lqs4GPMGE7/w2uDCOJp7n+gRjp7mRXg6lyIPfJg9W+vOikIcfsYrYDBp0N/EfJMPQ=
X-Received: by 2002:a05:690e:12c8:b0:640:ce83:c29d with SMTP id 956f58d0204a3-6498fbd6376mr1630616d50.14.1769533641408;
        Tue, 27 Jan 2026 09:07:21 -0800 (PST)
X-Received: by 2002:a05:690e:12c8:b0:640:ce83:c29d with SMTP id
 956f58d0204a3-6498fbd6376mr1630587d50.14.1769533641001; Tue, 27 Jan 2026
 09:07:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260127155537.4088709-1-krishna.kurapati@oss.qualcomm.com>
 <20260127155537.4088709-2-krishna.kurapati@oss.qualcomm.com> <yxpb23ffawznmb3syb7k23kz3lcnk6ta7ppaw5wcq3s6witkoc@qnakpsylbuyu>
In-Reply-To: <yxpb23ffawznmb3syb7k23kz3lcnk6ta7ppaw5wcq3s6witkoc@qnakpsylbuyu>
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 22:37:09 +0530
X-Gm-Features: AZwV_QjaU32-H0HQxoNl2lLSc7ZGO-OE_Vzg4xUuZ8sox544KPJEEnp1ksNKNtM
Message-ID: <CAEiyvpr0y3we-4V=r_0pLT5b=0Kyn=_CfrpokQ85WXP6Pr0WOw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: talos: Mark usb controllers are
 wakeup capable devices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: H90T9-VwwUm7I-pP0n3VjDAEDq7nTSIh
X-Proofpoint-GUID: H90T9-VwwUm7I-pP0n3VjDAEDq7nTSIh
X-Authority-Analysis: v=2.4 cv=J8CnLQnS c=1 sm=1 tr=0 ts=6978f0d1 cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=H6nDv8bb9oMGCCXUEtEA:9 a=QEXdDO2ut3YA:10 a=uujmmnXaIg8lM0-o0HFK:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzOCBTYWx0ZWRfX2a/Mkd6zEPa5
 MjgAs65KnAW74NL+ZgFJI66rfYxB+jBILKXtvabNig+8BvMdsSIGecfaaRlta3bG9PIcLMix8Eo
 xmX+QnQcxgq5xdxa2taMh6ybhsmrZ5TYLSnueUBGm2lypRVFkAR057IGhDmjGSx76vjeRjb6v0v
 eDRkIKR1MEs0HugyUtsRbNxzecqkVXHC0va3dofwKiq0gXPiN1Y3LbU5d3qnNyGQwf6GDy09ENK
 xt9Va4146aDApSgTn8zXigCmtDt2X1l5IrZ1xl2REl2ZK4v4dRDWdwMjvoMtTvvJ6k0wX98KN0f
 Xa2IxdjqOgbawnY4oSJ0HVaedhU+6bzLXCSeWtZeg4NxDPfNIT6Hr1AlYW/rAS4eHp9Bv+278rn
 Gd2jNMF/bcYKBTH+MnZARNbQ2Xe2XRqOFpPcoACIL/Xg6CPsCm7uR3QtwjYrCSZA4+VcbZuNs/P
 omoj5NiIS2TIn2Zhj3w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 bulkscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270138
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260050-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krishna.kurapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,mail.gmail.com:mid,qualcomm.com:email,qualcomm.com:dkim]
X-Rspamd-Queue-Id: CB4FC982FC
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 10:21=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Tue, Jan 27, 2026 at 09:25:36PM +0530, Krishna Kurapati wrote:
> > USB controllers on talos are wakeup capable. Hence add wakeup-source
> > property to both controller nodes.
>
> The order of patches should be exactly opposite: first refactor, then
> add new features.
>

ACK.
Will send v2 reversing order of patches. Also will retain your RB on
second patch after fixing order.

Regards,
Krishna,

