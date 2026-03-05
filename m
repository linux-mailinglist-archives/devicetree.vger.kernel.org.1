Return-Path: <devicetree+bounces-271699-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIe0CQfXqWl5GAEAu9opvQ
	(envelope-from <devicetree+bounces-271699-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:18:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DCC217598
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 20:18:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FBB33120ADE
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 19:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14705303A12;
	Thu,  5 Mar 2026 19:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SJuY0VFU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WGvjaBuP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E3E2FDC2C
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 19:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772738177; cv=pass; b=k2m7SM5TwHg24+1EOQgd8ij26DAXBk1c6E6FuaNWAT2xL45Aqlw9I9JZRZYlohbyHqpsgI+UNGYzLhUXb0Cmeb0pTg/sJKwca2MMDN14SCKHuaJW9aL7wi+0NqjsBEp8AvqDBND12ZfLXyLHIGwxpkak5Utj/g+6R325318eZd8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772738177; c=relaxed/simple;
	bh=T6mSzgIW84n78L1oui6Tey80VTrBXBQQ2EtxjS8uHis=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=vAgEzG4buSuXO0wl1mRSk7VhpoydhlEu79PpqgmGGqbRV0tFDhfAzo3rOFQCRDVm18e0aPzpPBVhwKE+uqY9boZ0Bxshjafikh/fSeqYlJjsvNA01GfrW7/xMoSmb4H6h1rivu7njZqAzMAtgOn67S8j1s46tOzt/wfLtzpkA8w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SJuY0VFU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WGvjaBuP; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625IPagI917166
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 19:16:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T6mSzgIW84n78L1oui6Tey80VTrBXBQQ2EtxjS8uHis=; b=SJuY0VFUW+EYt7Di
	8sqA0lDv2LrEAMbxpn9Q2x64m6PUEoW9YgH/jXkxCbmvMnm8pD9ZLF1ryzYyvG2n
	gG+oUsXhxDePWXzGBvl4Efw6F1NotGsFqFaZUeI264z55fjF9ui187Wc2cZerpnD
	QYxrvioO9GptmIlorO9EvrTMUK1o/nfUnZ9iEKji8hJvoblzTzRKhGwWzrxmPZqP
	yri2uPt8QiFuqejiUaTufxn3u2kl64XEL36o5GBZqY9vWL+4lNF7sadkPtJ+4XMw
	jbTQCUQKdf9u1hxFsOv32LkiD8/ZfXRs8hVWGzPF2LiHdEkpfCKocmBzBsYbKz9w
	IR8i5w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq380tuda-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 19:16:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50620483ff6so612121521cf.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 11:16:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772738174; cv=none;
        d=google.com; s=arc-20240605;
        b=G1G8WZ7LttKGJI4aStPJVSiSxCFMgoesWSHeLq5CH+sv8dQ6tvDahtNrqckdpYTbB7
         xXPzS8aNvNa4hNwdmM1IsqLW5+64SIRbLS3LNO84IWL5A2aWWtShBh0OiPWP1p+wnG5x
         Zd7NiIyXy8CN9lCVGvuQpNIYyMIsWUtEyU/4a6ghP+56VaSM+Cze76DusZhzMKLPw+/t
         CIGFt3oK/tNIkFaIa84VffbGjlDFf1FNPbVvmP2sItng/PBM63aEu6KVfAb8zvrWwYjC
         wb3xM3eje7qJGgUHmQDelPSLs0zZLsUlPtRa7QHQ56xOMGOe4b/kkDLHsfOka989p56S
         syEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=T6mSzgIW84n78L1oui6Tey80VTrBXBQQ2EtxjS8uHis=;
        fh=t8reQyrVhZaZvgwZYT1gApsW9F4maAO5/Lg20gePBv4=;
        b=a+D5OqvIoBSa00Fs5nPH42JBxa39xaedsNAlbxrRz3sQtwj0+5XHBfoV1wqFelT26L
         ngheHWEkCEWn9KXklHMMMcVS5wnRUKrdRQZ9f7PtnLMDgHWaDmPmQVMYknztzqMBH/zb
         1wRffs0YkKtvGZqxVtzFcJADhAswOjgPEgVfyfBcDg6mfPNg4d2d1nc/euNT6+Aktwp2
         HAlix3Z9PlpvcdNWmUVJ4fkdSI1vapc8CiW7Ag3reIjobu83zqvmLontT2sJoPO6vWhm
         eS0UcXZFPjJSs3aL8eokgFbABzEc0zv5eBdGYmultahTypBIgwzIOMN3uLmq3YISRs80
         uPqg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772738174; x=1773342974; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T6mSzgIW84n78L1oui6Tey80VTrBXBQQ2EtxjS8uHis=;
        b=WGvjaBuPlZgy4w2ShPaT3kGymear6CqE7+nuTbltWd36jVgl2JhLEZUAbBID8AWbRX
         +NXDP2xN6NcAHHqiLGNsPOZ2LGFjmP/38FexB0XW87PgusqAir+vKfL/XCoMJ+9XjdUx
         2Ghbp7H/pGh+x2Vq0AISrCE6bmi4uiRhMLn2W3VWchQkKWMGFtt37x5tuIfRuGEB7uP3
         AuCqPoac3Anut9ny8wtmDispyGjySo3+oajeJmsnOI968Usvimd1He9jVlgvKc4G+oun
         i6WsBTjiON9/HsrsuesX3SZKMx4ow1QhcAy6aAeVNOiu3sUPOYguEYT3XtNR/wNI3fJ5
         Lokg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772738174; x=1773342974;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T6mSzgIW84n78L1oui6Tey80VTrBXBQQ2EtxjS8uHis=;
        b=LRtANGLcEa3/2aPI/uFqvtlbCm19FLiWczRJv+nYr1QIft6qqcaMaAzP7fw/HLmCTr
         w32M0P8t/ZFrmnkT9aJli6/PW+7H0vS99DnADyA9ahzVztOySVzQTn8TOsJcos53T23B
         5WOux3y1Q6xsFTqu3H+QwmA35Ha1iEDAboT5HWf++vo/9ugXp9zJ9PTUwScRn5VL949W
         Kyh80/3IqdtDN0uNikjllgz9NFdjC56a48Lo7dbPSdlKJ7awAWpOWvk97OhJAwRHOSoV
         d8gV6Z311hNtG97UgK+w6XrkmATsPMX5qWdYiD95R0EAmmOgguN08lMrFdSm5DiyEJyC
         Bg/g==
X-Forwarded-Encrypted: i=1; AJvYcCUnFaLOiVx8uXm/tKr3n7ZkdJ9ApYRYWk7zoDHoyA8V3708RPqLjG0O4lVo1azUuAhutuf1lzlkb2EC@vger.kernel.org
X-Gm-Message-State: AOJu0YxhyZuMjo7KPiW8nCui8cyfX6F0waYsNkpOE9o9P9KeixT8n04P
	SuU+DnwAMBmOcegRmEExKRWl40EvOOa8LRhl1wKH3GyOzDAU9efvJ7eNGf8DEtkGPoSoWmS/9a5
	NQbuCEve/IgDG3VHrBPD813aNd821aVUwN7LqJ9pqovXdrgaT6qShGCUZ6pM+0+4sXk+NEEqRU7
	03/ALUdVGNR67gP3XHxhip0T4Yy++SQX16+BFyLtPGGO3NP4I=
X-Gm-Gg: ATEYQzwgqkCoI0KMiTLL8MK1dKQp/c2tuw9chiLt5KqUM5aSC/rvcty/xCrEq4m/H8P
	Jq/MUEtXYoige1XsCuFAJ3mDibITd6E0AfgLKYGgOvXFEv2NjplvwBDomUZk8/qdjAlBXjHt6/n
	K7SOSqlF6SZ7HHOvGPaTyiKeYuyDUgic+cQBL7sDWnDn8TiRjlJLEiA4WUQddStylIyGKzh0wRE
	GJ10rwlMRIOhU2CkHPpYpXUt/wTANUCJUjkRohXA6U+JxquvkWXklKUSHWRpSgDg2k6
X-Received: by 2002:a05:622a:1914:b0:4ed:6e70:1ac4 with SMTP id d75a77b69052e-508db35a31amr82530311cf.42.1772738173747;
        Thu, 05 Mar 2026 11:16:13 -0800 (PST)
X-Received: by 2002:a05:622a:1914:b0:4ed:6e70:1ac4 with SMTP id
 d75a77b69052e-508db35a31amr82530021cf.42.1772738173307; Thu, 05 Mar 2026
 11:16:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260305003253.1022386-1-kerigancreighton@gmail.com>
 <20260305003253.1022386-4-kerigancreighton@gmail.com> <dea45e4e-aebc-46e4-a245-3603da1779f3@oss.qualcomm.com>
 <CAN6+ztxfcNR8xR1qwgHQcHHM=zoQbMd-8oggb785ssPZ7f=y4w@mail.gmail.com>
In-Reply-To: <CAN6+ztxfcNR8xR1qwgHQcHHM=zoQbMd-8oggb785ssPZ7f=y4w@mail.gmail.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 20:16:02 +0100
X-Gm-Features: AaiRm522mri_3_E_tLhvFR2PzRjD2c5pLyo0FI7lB2vgbC2_G-1Iu1ExQrqtndw
Message-ID: <CAFEp6-3JVicAVJB_+5ceSar2Jqstexo-0tyemg3C=qcznQsmxA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] wifi: wcn36xx: add support for WCN3610
To: Kerigan Creighton <kerigancreighton@gmail.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-wireless@vger.kernel.org, wcn36xx@lists.infradead.org,
        andersson@kernel.org, mathieu.poirier@linaro.org,
        linux-remoteproc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=I5Johdgg c=1 sm=1 tr=0 ts=69a9d67e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yx91gb_oNiZeI1HMLzn7:22 a=pGLkceISAAAA:8 a=29fU08-qhLxzT5EMGmQA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: QEdXCvRuKWT1W82fqu9LVrpmza7-eVqJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDE2MCBTYWx0ZWRfX9XJFUxjoezRS
 hWzrxO7ktZ2moELpjPX6jAeJaT8HV6tiyPtoTa0RCeTGfmd+c/nlMhFUwr0kYvrPhl5lIfzpcjy
 gLGfG0U0Vr1GaNeXA//TMqm4JzFn1ptbjOuRONLGyjq33ar3rs7uVSBmeM0BOqyU7+mjpcPGcXk
 pb42ImYBXrLIKlfba8eeXnw1TrttXVNaFCUxDj1VcCIMKwsmXCpNmqRff9BVGvp+0os/fqU5G+i
 nJaHQbxNBr0KP6Ecu7WCNrX6mJQjUYvGpKOSEsOIZyBqt72vri4ZyEtszjj8glED1O16H1B8s6b
 snC7zDs/pZ6A+HaG1RoIgEGWMUjUbWCirLdfqfeC3wuThIWBNjqC2wDYVtT5c13S8k+Kjpyn3aR
 iqw3cnhe4u0EXs4HcIGYTPxLHLfRkYWkJzBeYcPaGhsrftiRX28pxTJCpw7C08RB8V/n82KLSKP
 BLdaU+uvqpFBzkZu4cA==
X-Proofpoint-GUID: QEdXCvRuKWT1W82fqu9LVrpmza7-eVqJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_05,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 suspectscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050160
X-Rspamd-Queue-Id: C4DCC217598
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271699-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 4:51=E2=80=AFPM Kerigan Creighton
<kerigancreighton@gmail.com> wrote:
>
> [resending to the correct people]
>
> Some of it is observed behavior, some of it came from seeing what
> the downstream prima driver does.
>
> With the default configuration the WCN3610 shows extremely high
> packet loss (~95%). Setting ENABLE_DYNAMIC_RA_START_RATE=3D0
> (as done in the downstream prima driver) improves this significantly to
> around 5% packet loss.
>
> Further experimentation showed that configuring
> BTC_EXECUTION_MODE=3D2 eliminates the remaining packet loss.
> With the firmware default (BTC_EXECUTION_MODE=3D0) the chip emits
> BTC-related SMD events that the wcn36xx driver does not currently handle.
>
> BTC_EXECUTION_MODE=3D2 forces PTA_ONLY coexistence which avoids
> those events and results in stable operation. The downside is that this m=
ay
> increase power consumption because PA remains active.

Could you please add these details to the commit message?

Regards,
Loic

