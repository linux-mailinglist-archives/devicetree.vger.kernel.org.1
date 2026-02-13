Return-Path: <devicetree+bounces-265332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJl+D1n9jmmOGwEAu9opvQ
	(envelope-from <devicetree+bounces-265332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:30:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E76F135195
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:30:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D6E333041BD4
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 10:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 598DBDF59;
	Fri, 13 Feb 2026 10:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XKqripXH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C5oSPnE6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343132E6CB8
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770978639; cv=pass; b=Q92rIKiibl36O8ORBIzezQO6Fz0BpPBF6IGImsbdOs4uk0HNjUTC3502gJvOJxJZM4cgIQGMMPM07D+VCNYfAD/hCbDJ5yM0AcTMY08AFvV9lHfCeK7MUQMcNyYPRVwWfd2fAK0KlCOYqCaptdm52x+DVJ9DntgtAUSc01CW3eg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770978639; c=relaxed/simple;
	bh=tU6fLyEcqX+datU4ysa7F5DDXFbUrr7gNIzDynYgdP8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RXy9mHPTZvM8YQSm0aAHz8GSqyykkHiIvUAexEOnSMpkPPmxScI1fowZCZvJ2R8T+GRnktY1PoiQjXbbV8SDB3RUZn8sQLNmi0omrJJCVKNZH9bsl9w7Ji9q+33qQRMtxnWqj3IRV0lEscPNMs+HFMa05EiiU2Y3Cu3mmzXN28k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XKqripXH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C5oSPnE6; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D54F141827975
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:30:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tU6fLyEcqX+datU4ysa7F5DDXFbUrr7gNIzDynYgdP8=; b=XKqripXH+uwuyyrA
	FZnjFg2mBDE6U4LVFC3Z3JzLQnGZLxGUKFsg7MVtnPHm7dckfFYQIxyZo5hjLGhN
	uF/wb281HNUkjE0J0dJNMbu7VZSd6e2OGqUEfCbsMKxXqxg3CuBI6XYpY7JfGd1g
	qGEiJGSfYUYPB+TxHzldP6evEX0bHZAvL3alBKyfEb1N2sJzddSezUznBRy9xO9N
	qZWc6+nmbnnrq3bIFvAXpc/hz5VIA9RAkQLcAha8wbM0vPuZBq+aMEoTNEcyWpJx
	6rLOB5XYWZqnZbkjCyqp9DFKqwsJM8m1WSNtxqXwhJYdxLkMmebkwBLGA0R95IZB
	RUM4xA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9wg015de-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:30:37 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8954ac30d79so33909536d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 02:30:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770978636; cv=none;
        d=google.com; s=arc-20240605;
        b=axqZpEPAyJTkxKVTFRQVPL7cnHgpdYOPt3QRvtXFEdnvuWdOS/WD7yzCULthUTVBU1
         yaLWpSenMCkGNEfvwZekbdDII3OOFoVxOUTQQMWQqqkUNPwTrImfm70GiYxcBckdJ91o
         i6pTA1EWjcsm0dexh6Qxtb7OUZCQurKQb4ZzLfbD1JV0sdwFo5u1KsXkYIEC0LlDe1MK
         Ri4wFhZtFSF4Ou3T3PSyzq12rYSI3aWW12C49p3RUk3OgJWVPJhg7TT+6f3QmgzAR9m9
         C6dfFEZGlVY1cUCMExBgm0k3stHQq16q/CmQzoVlybzhx/UxYDb8JCcpwshlQDHaFQtd
         7Ipw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tU6fLyEcqX+datU4ysa7F5DDXFbUrr7gNIzDynYgdP8=;
        fh=ZCO93u8vfQ/etsk+GrRqlkH0FrGOPvNh7Isoxx6RqV8=;
        b=apMJKpMY5IgUtDJtY2JNFK3nmaZDWrkNAtNQV0yIdsK/tiZxJtEa9fIy7dn05P1tOl
         eVqByFU+HOxR94whAgspY7UmtWTAivIJDxRUlk9Vfw96yTiC9S6NoSAPbwCEahu80+u4
         Hbd7rjHjjFAVqIS6/qtKaAaAZCuANRECOQVjLEynJ0oC0ufEAQFQibdyo49q7J9oWsbF
         NwZnwWhfOf4kDTmJNnAkYoUfk4jhf5SQ/94G6HSuwLec/boCIO86tvQ+W+M00kMfRj/d
         pw95WB2muDpR4QhXLxxDA/mjnQHT+6qzbxig7W34rkUgNoEUMi+GLDKsXUTWfSgIBhaa
         i1Xg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770978636; x=1771583436; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tU6fLyEcqX+datU4ysa7F5DDXFbUrr7gNIzDynYgdP8=;
        b=C5oSPnE62xkT8jQEkDRghTT9ybZ3NwCj/TxllaGad3sYrCVoyLikhRzXSlvjv0QBXX
         yRkc6GATNFNZZa1WrYANCiPfZIVYI0/xUKZ8WPxwvMq4w/Fko6SRRaXP9DfDNN1cgXEP
         ikpXzfPsVJk68/TuEl77qlcUanzY0xs4Pz2T8SqfwFopMWgJyGfCCVna4PPHRSoujrDS
         fIikoH9TyaePdXPrzYLwILO59aphDzOwdEZm5/hbml5swasQzRYz4Y3l07C42Lpdt6eI
         bk0OF7z2Wh4q8dLMtwBpGS3zKkHV+kd4VuI0WmJUfWNzX/yygV6OnQdsejBeaeqnT8Tt
         eurA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770978636; x=1771583436;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tU6fLyEcqX+datU4ysa7F5DDXFbUrr7gNIzDynYgdP8=;
        b=YGw4mj5UmhD2JZgCcehlZ0U2XFVYvNKmP2QlgbFAJBcp7XtVHNFivwNvtVGb0bFBZd
         wrw6zHr1cccgXl8zAiF62FlzQN5Dkm5hDGQ0C3GDkJ6iZ7jsLPZy9kuhNJZG7Zi+rNNA
         h1BNcx4C1D0F3ksRlAR7RWt/vk1EnV1pWUWaYeJHR73kZ17fajPmtMJLHSv7KT5bnrLK
         NXzwmA0+VAgXSYRjbg2vA4tP1u6DkITb6Jb3zPRfphIehDK19TUW5pTLTlQ3yCXyFiTC
         qvRmfFpqIegBTBB1ZHU2f54UDbib/2DsKbPagkrH1Pyx4odsvetOJ5Q2LYO51JaN4yoM
         0SNg==
X-Forwarded-Encrypted: i=1; AJvYcCUX+t7lle9FbXZNbg1jGMWbfCtoKxKFJV6/fLYoCzs2mKY3YQHwDhccGk1m4FVd2Xjw9zEYpuLa0Ddl@vger.kernel.org
X-Gm-Message-State: AOJu0YxLaPbSbzCQpd04/enxjDy9S4YknGEPrP4p8MmeR03hoaaoKMly
	FCA//k+7fSsS7B3r6wzBnDrSiHMu7i988iZbAAfSLq8NiZkkNAHpBeCbAAiKl8w5D04gJoLofFt
	oeSLi6hcKLgjyAw8r79mcItUiB7aHJIEZxMVaMj6TdNHPUAUzMzlYnH/XfRgySYhWSqtcGWJvaa
	tdOruXRE7SWNw6VCKT6sADqyKvNQfS1psAn89bax0=
X-Gm-Gg: AZuq6aJaEy2AatUKi00oFtBzDW/E9zJYH+wf6isAYrFA09fzlIQzTjfpMkZyQGkaPo7
	If3VPMmzZtNpkYDjwA8LCIbxGtYtSEG9uRwBv2LY0Tqie/ZyixlrNRKoaF3YBWYCtP/x9Ca1eZG
	r/JuEC4s2eYxiRhHwip2dB8d8hjpWM8oMISX/AveutAQaK0RyUBw45Lqcj414OPY4ZYc7qVy+TO
	zP58pnHdhkVj1o2aYcd0I4ce1BCjCPrOoIDqw/0
X-Received: by 2002:a05:6214:268a:b0:888:586a:cd89 with SMTP id 6a1803df08f44-897361a908dmr15469066d6.34.1770978636254;
        Fri, 13 Feb 2026 02:30:36 -0800 (PST)
X-Received: by 2002:a05:6214:268a:b0:888:586a:cd89 with SMTP id
 6a1803df08f44-897361a908dmr15468626d6.34.1770978635842; Fri, 13 Feb 2026
 02:30:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260210152548.769951-1-loic.poulain@oss.qualcomm.com> <d7a6c220-a6ff-4cf3-8c05-762785a7f21e@oss.qualcomm.com>
In-Reply-To: <d7a6c220-a6ff-4cf3-8c05-762785a7f21e@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 11:30:24 +0100
X-Gm-Features: AZwV_QgO5p-q9i2Q9woX-iJHlywyjt9udqKLNHbhQMWQOQROX90lNnBIkrX9EmE
Message-ID: <CAFEp6-0hq2tnYG4xaZ_EBFBBk3Vdp+Er5nCn7HY0F4v3yGumLw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: monaco-evk: Configure USB1 as
 peripheral and USB0 as host
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, swati.agarwal@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA4MCBTYWx0ZWRfX+TZEhwSPO5H/
 nh4PXXP2iV7ll81atii3KYPNLkuC8sdSdb4OwfEr7eUk3TTlzqenc6VcPS/g9FaClHVz4K8Cx8Q
 CA7QCWTdN/+ms7Ry9vX0kPC5lYbCWuVYfU8MopZs6xMn+H+mK6sbTJF8yPr87pCPlKH1wD55pdW
 olt88v7u+TZwFtDykk/krRud1tzj7qBchSIygNmlYEJvfKsCbecPEDNQTp9KSXvnjHL0CO1JlBg
 ierYLSwfwjWP2hoHWeF9boz1WtEQp2ZsdgoBgPsjvqz1LuvJJOSTx4M0/bdh9/s6tcWNATe85M8
 cZxjHnNgpV8jyMXhYH+HIm4DJB2XSSdWGhcXz/5H2jh53ysXGiO/qpkuvxmY9HfGZAtctCietig
 dxEz0gZFxyrYRHNezthss8wFF80dDomzFJnI0l4/5I+6ymtAVjJdlHESHyQ7yB5iQRaQhiNBVB5
 mXcDq+SbEK0lfs3A6ig==
X-Proofpoint-ORIG-GUID: dQsmAmMGrrliJaGRORXgnVd2gsrgvU_x
X-Proofpoint-GUID: dQsmAmMGrrliJaGRORXgnVd2gsrgvU_x
X-Authority-Analysis: v=2.4 cv=bo5BxUai c=1 sm=1 tr=0 ts=698efd4d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=b8aqBZLh7fHaDGu1GnUA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_01,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130080
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265332-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+]
X-Rspamd-Queue-Id: 8E76F135195
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 3:01=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Tue, Feb 10, 2026 at 04:25:48PM +0100, Loic Poulain wrote:
> > On the monaco=E2=80=91evk, USB1/HS is routed to the micro=E2=80=91USB c=
onnector labeled
> > ADB/JUSB2. Enables that port and configures it in peripheral mode, as
> > expected for ADB/debug usage.
> >
> > USB0/SS+HS is also repurposed into Host mode so that external periphera=
ls
> > can be connected to the monaco=E2=80=91evk, allowing it to function as =
a proper
> > SBC (e.g with USB/HID devices connected).
>
> How are they repurposed? Is there a DIP switch?

I meant that in this case the port is configured in Host mode rather
than Peripheral mode, so it's =E2=80=9Crepurposed=E2=80=9D in the logical/f=
unctional
sense.

> On 2/10/26 4:25 PM, Loic Poulain wrote:
> > On the monaco=E2=80=91evk, USB1/HS is routed to the micro=E2=80=91USB c=
onnector labeled
> > ADB/JUSB2. Enables that port and configures it in peripheral mode, as
> > expected for ADB/debug usage.
>
> Is there no OTG pin routed from that connector?

There is indeed OTG support, and Swati actually sent a patch adding OTG
functionality:
https://lore.kernel.org/linux-arm-msm/20260210155329.3044455-1-swati.agarwa=
l@oss.qualcomm.com

> > USB0/SS+HS is also repurposed into Host mode so that external periphera=
ls
> > can be connected to the monaco=E2=80=91evk, allowing it to function as =
a proper
> > SBC (e.g with USB/HID devices connected).
>
> What is it routed to? The DT lacks any topology description

It is connected to a USB switch, which by default routes to a USB
type-C connector.
In the alternate switch configurations, lines are routed to internal HUB.
I guess it would be ok to describe the default config with Type-C connector=
.

Regards,
Loic

