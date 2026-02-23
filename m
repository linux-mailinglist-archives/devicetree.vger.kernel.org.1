Return-Path: <devicetree+bounces-267546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ERYGNmKnGl8JQQAu9opvQ
	(envelope-from <devicetree+bounces-267546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:14:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B317A17A83A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 27670313647D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7BF8327C09;
	Mon, 23 Feb 2026 17:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bghbiY7u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GbZ8VsXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15B1329E40
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771866568; cv=pass; b=UKak4ZP86JPjnwiwmJ05CkNgjZ43TtqNQ/xcz1yW4xDPzw7d/soFbOsKOFvWttPjaMIa+uW1wa/+hrNVMaxnhtgMuozUiDQADHojAW7bmjtmESL59ENsSC0I+OQ0WjlmGi5Pm96ec7mZrg01cfCFi8cPw4Rqu7kNIIEOhoA9GDg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771866568; c=relaxed/simple;
	bh=bEIj0WNA1JPDgmSNrfUPFvoUTelCW2u1zpq9ZizVch8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PD1UEYjnQeTTNO/cP2aeFjHykJmEi4qFxoANBFf8QuP/L7Eb8+yGwgK5HTzaNb+769ytmCddM64TGQOjoWAP7YkyGjn7z0q9sQdA7yesfEkfJxwhz5w2+rm1B0Gq/9kqSmeyUyRvq1+aIz0MO4qVWgWIJl9p4i0zBXgPNnEc8Ys=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bghbiY7u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GbZ8VsXZ; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NH4Ska3698117
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:09:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=v4wJf3RfvYx/N6YOBwnzs0nO
	tYOlLmOqFKLIASO8YBs=; b=bghbiY7ue+A1njbaWrWACoe4QvDba1Ik19DEIiKM
	hnDcfP2Hvy1NzP0BgmD6Px+voM/fNRgWsGU9YDZG2S0LNO1An9ywI78EjFaW1Z/q
	pe6E0bCamsWXbzYOb4Yw8znPhMqHU37n1N4D1KJxS1zYa4Ymb1iPw0kRJ9xSl569
	xBmI0paS2tPNhGNiIRf+8D39CtkwDHiZQZwpj01qONyn9E8tNSXzEJnSe//vzonI
	5yixri3ie5gm8Ch+2bLYlZjl1O2ZkRav2Z6BK8CU+rdK2InhgwRhagiKBM/eX24j
	NskMfvMIFTiF6rUviwUmthtXvp8bLTjPlyjtpCfT+bQl3g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgn819876-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:09:22 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-354bf10ec2aso3227555a91.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:09:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771866560; cv=none;
        d=google.com; s=arc-20240605;
        b=RLq3M+fttpneWRBUqVFwoUlxj2ffx7Hyd/MmiXU4VuW5u/0irtCRzFytJZ32DIxn60
         0LW9LEKOVEIfIvxq2lcFQO+3DE4Iac4rz+ZFQo6vvyIGtBAzCHTFvx6GwozVo8CHGoTD
         8NtPHspQv8Yhe0rS8tw3X4IVASZuueNm2p2nF4E61PidJtwuYpq/S2wbZlCVWv/R/L5r
         1LVcRN6R9zTUoxZd1Z5VfQ31rsjB6dbbRW9bz5dgeEaxqYPCrFAAfuI27rC4ihofCvBI
         mZ9rcs65Uq/dD5Cq8z//kZTjVXT3mcH71RcU11Uf+E32rABEvmpQ030gqvzv53m60HkY
         2anQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v4wJf3RfvYx/N6YOBwnzs0nOtYOlLmOqFKLIASO8YBs=;
        fh=+Zf6F3aIQUqamG2N1sgvZuhtlqksJkNADASLzg8Lprc=;
        b=F/KpmKDVF0f2rHQfksu1FvzS0Xo66I2y2Gs61bslM2mOlH3UVwJXz+JauFZID0gapC
         pHTJwttbLs5NWgCx1n4PL/aEd9o5xWU7pPjrF8g05x9DGzFTE+2oEVocnu8YbDTN/pOX
         Z84USvwZBWh/ZxCd7KhWihjA2Ae0wdv8UrYiYoE8NVH2ydKZzhMT0TmBjloU0fYKfgDn
         LaIxw0c/e/hHQ3wOY6y7ILQOwst9UbyiNCJtCudNc5E/jSpoR987mSmlfBVZP2Q0Ej1t
         lduxYuxFQckas+5mblsZ3p6F418lgR6ERo1fYyhGcaqk+4Rf01kb81yfEl7iMDDubJFr
         DrQw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771866560; x=1772471360; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v4wJf3RfvYx/N6YOBwnzs0nOtYOlLmOqFKLIASO8YBs=;
        b=GbZ8VsXZ4gMCzfvYvZDAjI9gmfXeP3wRbeDw6RT1K8FbYfh76mcJzH3htUEiqmDKF/
         rlczxl7Ve/jjCGm52HsxcyloFAvk50CCv+u8xYrjaBvsoqLRu0o8uYWOZX43Exgjb7Ox
         W5yJBEDBGQkU+FSdeN2BdRRl3vANR50it9/rBrYMRv5VaklLjFSDuoUWY1KrB89mNCCT
         0ftXwXAAp8HOj+yC2M5AYaiiV4WoDBppr7OEC1d2E11Vgdsu0MHUZNrR/UFhU6a0w43p
         qODusMx2ecR1evZnpAXPY+b3dyz+lGmwlpA0z1oH0MpczH9AweV+Mt1Aufyi40CfXaVH
         bMMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771866560; x=1772471360;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v4wJf3RfvYx/N6YOBwnzs0nOtYOlLmOqFKLIASO8YBs=;
        b=Y02S2UDNIdJHA2d9WmhQZEwRx0lLuLQS/4jTWFWvqV9gXnCgyNKfLTCUXmbk0JxDzj
         OLJu00tBymtrWv39mDs/T4S8XimtnCficIkM9jT4mj68H+rP3W9a/B6sGtQj60FwMpn1
         RqTSB3QNGY1A5s0Tvq0vi8uLTXlkrbyvYmZJ5iFMn2Fa7XnZYFBcX7dg9iWQJWO13F8G
         /JtmjxkQeb1MV3a8pdCPPtTxP3vw691JGFGjFDwVIm3aScZkQ+lZMFQKCBhLorP6McgF
         Gt4TAz4IfNlf04yaL7dP6Lz6+cPFF+CRiY4WeDtsTdaT2VAxYA+dbN8NI2LgcBLT/YAd
         YarQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBdxdTQwZcKuSV2EDBuEW4c07XbMqEKkimNlul9GMW3lp63Yp+7Q+CiXrKe8amsQeIs1lcOvyemx0E@vger.kernel.org
X-Gm-Message-State: AOJu0YzhQlkY1CoLfayp9jIYtHHxMnQw27pBhrOpztMP5FQX3mpDF43r
	vIugtve393JTVwYCxgrjHMAc8V4/o0ZBkLP7KOAcL4fB2FLB1nJhOG4fcE3mOLu5GiZf9MEtAoC
	44804Jr/bKiZfE/90zPf5Ts4tEyJjt1DMgyKVizCm8SF0sFhxhnIZGe1c4z4MSmrtl0dT0Zdatf
	K+vslNotIoU1GXjeT9CuW+waHULHQ0qnd2lt4NWJU=
X-Gm-Gg: ATEYQzwUVjbwIQZdCP20IJPd32EmuGusLHQMq+H4FmuliLEVkZExYwk3mEBCvrhvzmi
	lYmmVrYp4mqd/kWhM0Fg59Evnijn9050v+7QrhEo0j1xHu32fkbDr0G5Fh9RU1xdAi1NmCfJqvz
	xHP7NHhJbYLdqbwozbmLDJHOkADfEAv2u5mdbccIel+fsQoRANGK3LgOxX4mK6HinEaSpFJMHyS
	OX6YtU=
X-Received: by 2002:a17:90b:4d90:b0:340:bde5:c9e3 with SMTP id 98e67ed59e1d1-358ae8c2d4dmr8000840a91.23.1771866559531;
        Mon, 23 Feb 2026 09:09:19 -0800 (PST)
X-Received: by 2002:a17:90b:4d90:b0:340:bde5:c9e3 with SMTP id
 98e67ed59e1d1-358ae8c2d4dmr8000792a91.23.1771866558625; Mon, 23 Feb 2026
 09:09:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125-pixel-3-v4-0-3b706f8dcc96@ixit.cz> <20251125-pixel-3-v4-4-3b706f8dcc96@ixit.cz>
 <jqgwmjet2ncit5bqilvuqldxrtcapiozmpbk5klc5tybwbfezi@4muxgno7do45> <599b42cc-02de-4430-b09a-3316677ff541@ixit.cz>
In-Reply-To: <599b42cc-02de-4430-b09a-3316677ff541@ixit.cz>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 19:09:07 +0200
X-Gm-Features: AaiRm50Sx2_n8DihOL9hklXJdrc8Du7OFuYU-F2KAYpfUdG7jvJfCQgmVGzeJ0M
Message-ID: <CAO9ioeVTyoG52=5TRFC3NJqKODXD5eGcpTax9SgCK3b-AznH1Q@mail.gmail.com>
Subject: Re: [PATCH v4 4/8] drm/panel: sw43408: Add enable/disable and reset functions
To: David Heidelberg <david@ixit.cz>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        phodina@protonmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-GUID: n_O8CDLnHMsZsoQMBQjxtTwpmfKPPBkV
X-Proofpoint-ORIG-GUID: n_O8CDLnHMsZsoQMBQjxtTwpmfKPPBkV
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=699c89c2 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=ZpdpYltYx_vBUK5n70dp:22 a=im9cganMwkklmwY8314A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE0NyBTYWx0ZWRfX4QVcZIyQRW4y
 1mGvypvOoYD2EXW76nabLye1YG/OjAg887fN9X1LOXOj3SSgsrzB8LhVweOJAmi7ivl0us0LI8D
 q/1mjygjlYDuTzjCKuIDApB/aXvnCAgIrPG29F/j5WJ/yVE6FdobR95vJESjOUoFzNF8hOZwq6J
 JqYGqyDHq+EoKYXrPMEhGa04UNe6pKMU9TlfnP4cYRJkVJ9PPCmjj0l3jN8bdZp5TL91QNsCjgm
 QQqN6aTsu/N574tWWqwOUMXD8WWdcPPhJ+MPCtNt/IVvM0giIxxhwI7rhD+kKp0xzG5xzHonx1G
 Vn7uvCEvwE4xhwXdE7dO4wpG0xXlNTmtsaDaMGDErYCIO3I9SO0pi5XbJbuXd8uLhEfwxo7yP1J
 3VwUuvyl864Gwkg7/+JG7dZ4imqBs5EnE3jT5klYOCo6UpIpf2LE6WuPXfRk3cp2GZOVv3mFYkB
 Yv3++RyJAKAXZXEVZag==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230147
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267546-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,somainline.org,protonmail.com,vger.kernel.org,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,mail.gmail.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ixit.cz:email]
X-Rspamd-Queue-Id: B317A17A83A
X-Rspamd-Action: no action

On Mon, 23 Feb 2026 at 15:40, David Heidelberg <david@ixit.cz> wrote:
>
> On 06/12/2025 05:25, Dmitry Baryshkov wrote:
> > On Tue, Nov 25, 2025 at 09:29:39PM +0100, David Heidelberg via B4 Relay wrote:
> >> From: David Heidelberg <david@ixit.cz>
> >>
> >> Introduce enable(), disable() and reset() functions.
> >>
> >> The enable() and disable() callbacks keep the symmetry in the commands
> >> sent to the panel and also make a clearer distinction between panel
> >> initialization and configuration.
> >
> > This also makes those to to be executed after starting the DSI stream.
> > Is it fine?
> >
>
> Hello Dmitry,
>
> I was wondering how the exact workflow looks, does this snippet reflect
> real world?
>
> - The path ordering should be :
> - prepare()
> - (host/controller sets up link & starts sending video / enables bridge,
> etc.)
> - enable()
> - disable()
> - (host/controller stops video / disables bridge, etc.)
> - unprepare()
> -
> - So: prepare happens before the display pipeline is driving, and enable
> happens after the pipeline is ready and stable.
> I assume in case of poorly written host or bridge drive it may not work
> like this, but in general it should?
>
> If this workflow is correct, would it make sense I would incorporate the
> phases between into the prepare/unprepare kernel docs?

There is a very precise definition of the DSI host lifecycle. Please
take a look and notice that for DSI hosts there are two different
points:
- the DSI link is started in LP mode, letting the host send commands
to the DSI sink.
- the video / CMD stream is started

For multiple reasons those two stages are separate.

>
> Thanks
> David
>
> [...]



-- 
With best wishes
Dmitry

