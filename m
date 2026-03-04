Return-Path: <devicetree+bounces-271289-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIt7EOSzqGliwgAAu9opvQ
	(envelope-from <devicetree+bounces-271289-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 23:36:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 953EE208B47
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 23:36:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8780130131FE
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 22:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D6A839479F;
	Wed,  4 Mar 2026 22:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JL3Kxza5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hvyB7tlj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D4C34D39B
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 22:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772663701; cv=pass; b=ATatS1Iw658uSN4Kvr5EblkdlmC7pnPX95CS4AcnTLWwMH6L394WxM8SCXSbFhz3sTMlRu4TE7ddLwMcYBJhLP96DmMQ0Gp23fmqbMEVTXCDeqsCMp9JSyNSvpwJc+c0zKZb7tWNmMY8kqhZqE36Vd+368N0aP/Ka2RP06oaYBM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772663701; c=relaxed/simple;
	bh=qP8kdQVtQzT2qYDL6gfTLbdxGRpIBJRAUZCwIBNREQY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s4hGbwyZyg4lx2OIaVv7W+uwG6FZPRPqdwdGngdLlVFFRE6o3xPvuI2dRXfv0mlUhWUD1znHw3AIfcyNiOfB/cvnJwNcmYs6figRkttJZVog1WU6jcqDAH8DTrhl4Nv/AqK7cspMVMPd529yiTrOIhr1pk0PpZq/j/67YBBpMTY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JL3Kxza5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hvyB7tlj; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624KLsPW3617056
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 22:34:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Q3kw8hXwTJj79fdkUH7EbtWj
	4/71ysEafkLCAulJP2Q=; b=JL3Kxza55K+oBfCNM8bskFIQhJvjIyjUbx5xkMh2
	QTillC4TjKWfJT9vxqblICGSoWTT3JZ/payC0YmCClyGEnUIaPBlkFaxuvS7v54B
	9GkNjHrjMWBgOZkYlhxjJWcHL1HaVqq8todMuLgf1E5EaaA56WTb9JSKhtA/opO+
	X9ZVLPfWLFdi+45pyWe3oKxr/AZy41irSefAB6mbrlSYbrZOBPvVawe3RGEH4BOH
	XgFsdm4ITY0BFW09okvIPN0vcgIWMqm3LSbb8QrUxBUBYxFJErm7QY2x8Bt34s1+
	Lw3mCezjcIsoJSu6Rs+pfHQOrUEE291Eywav0+vbQIi4tQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpuptgacs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 22:34:59 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-354bc535546so5922011a91.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 14:34:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772663699; cv=none;
        d=google.com; s=arc-20240605;
        b=NoPJHiBgGpIHhAIln+hG03ayajq8NuUIB7M5e7ctcyaVO20dVy/PAktT3R0E9vhNga
         bda/4p7rX77149Seuw3zFfPgwKzr8gtD7lphNzqSChzLhPPHoImoUOMnxCrzf8P/W+zJ
         7qSI473SEQCNqJQWA+lkkURgu1K/MXyaErcGMkxzUBmkahPoVrCLQ5JHluDC8czIoZRM
         64nkWebkAXjl0VeChANhii7coFJ3iBpUMchFEB6OuJ7LBHIZL1WPPr7CBywvtqNGWVsF
         GwUxn679lgX1YyXyLuXFwchTPQ8IGfKpoKbWFajA6hH0TXWKNV+AvhZXWidCfGbx6SNd
         j7pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q3kw8hXwTJj79fdkUH7EbtWj4/71ysEafkLCAulJP2Q=;
        fh=s+fjhEOy8dhUWM5pcCTqMlNyGJ/EtPSXxayQZKSh0Yo=;
        b=T4nh1v2gp1Lq1pIr9eoxdG7h8acIQ4ql8oP6y/o9vxmfxgV6AwT5TbcwaqgcrUXIZE
         Ezb1HEaIlN4SMyVJTNSIvTfbfewqRht7xbw5A7E3PG0qpmNVqL5EEye5Y48DUweP64Rr
         DFRsNF4MS84sANLnecj3o4Rxm+h/Z0hp6sKWka4UDCherHiaTBmNJgossO4JP7IaMUZH
         nlLA9ddug8Q6k8cuNtJP7eiKKTq1d57EN2gmOvm58OJ62Fnakv6iKhRlljrq6znslzoX
         cvD77UnEpUHiOslE6f4dqNO3ZWeY1U9vyvfkp2rELrjhf4XjcNXaIPqY66oOXpD6Kr+4
         R1JA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772663699; x=1773268499; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q3kw8hXwTJj79fdkUH7EbtWj4/71ysEafkLCAulJP2Q=;
        b=hvyB7tljh1g9USj99nRkY/EGqojfhoEnFZ+No78K+/+W2VsPxivmeX+IYeT94JHVfE
         CEf4hqZD0MfzT7Uz1Tnjxa+BGf2KkN9YIDCncAwkMw3QJMTF6xc5irZP5i+IqO8GUoyP
         +5iNc+3G4XyMhKduq3Z3DXM+22qaCg5TiCt7ho02QnpDptNI81Af+az8nouFP0StYBJ1
         UUGCpVNThqsfuGa4ArpSihPAjEBXp0VBAew6MssWPioirarXCnLQVWJ3WspFwms8pIPt
         rsLMH+OzpaI271nmOIINnSZPPznW/sK8WJbdFn7ZBajIRzf3dHs0IN93Ik7boz7Z3Lct
         kDQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772663699; x=1773268499;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q3kw8hXwTJj79fdkUH7EbtWj4/71ysEafkLCAulJP2Q=;
        b=sOVp1H8ybnWEy1xaLQ7EpZhxPEcs17HTUm4G1wpwarB2YtZ+zTKn70OYwsvwsXj1dP
         VtSIUHQSdgzFXiMb/96sg+V8jFVd80DItMWPDWguShqb7RYF3aHD+m70O4pVpcF3soeL
         +dHXUihQDkLHkK3o/hvhVUqqQb5lrV+noTUIy4BdnHDLkUUQVLcEzRvtZ5CZ4P00IN8s
         NDrY3PSSugHcNyTFQi4NbxXJqjV9vhlCFyZb3Pr7vP85NpfO+/cqCl1zhXyLIQCZW0HM
         vLH/J6rTbzCh1B6TwDxruAugrfMYIFzVXBOJqCO6K2kyZGUPm93ID7szdNzpxdM6zQR+
         DpWw==
X-Forwarded-Encrypted: i=1; AJvYcCVWS3X/EM08bBtAfCVzkT2WNHAcs8HxlZ3brx4ymOKwwoRkN20lw6oyix/kwOp6hEfd9ZzlYgx9Waf6@vger.kernel.org
X-Gm-Message-State: AOJu0YxRi3SQirbLUTtgU6ucubfZC+H/2g+THuOOwE9Ty/GyBHAUq+7w
	E3odBG6A2G+VRZNhx21cKoh+bAZ9jM6soO+IlffpYr/1HYUfGiULVGy0QKHof/IZXKMXqtau0If
	9Ro6nvuXw94zJaOLSaGMS+BCMvbtFKW2P9t0ptda9TVSHzP9rrg6nSdOj3QdZ7wYxD6OyFKtHA7
	sTNaLbxx8ZT9+1elxy6RaU2SIgjmmUTVYKmoOnMoM=
X-Gm-Gg: ATEYQzzGW6tLwrrRcRPhMyeKxDqlRv6oxZBQ48HW5AbZFB2C4rPnpwHCCTo9f04vVtG
	tUokQi/5RGS77vf04GOdcJrzo4RQLFdr+kiR040XGe7zbGknT9Xxa79n7yQqM925trHEq2jh7ru
	JP6k0fHSU7uvhh31L7PgoQ6B+h5+tQ0rac/R7QmDyK0FVNoick6JKpqaDlkr38SkjUOANtNbkrz
	ZB+QPGDi0lDLrpAdX3q
X-Received: by 2002:a17:90b:3d05:b0:359:8d0d:5905 with SMTP id 98e67ed59e1d1-359a69bde00mr3337290a91.9.1772663698568;
        Wed, 04 Mar 2026 14:34:58 -0800 (PST)
X-Received: by 2002:a17:90b:3d05:b0:359:8d0d:5905 with SMTP id
 98e67ed59e1d1-359a69bde00mr3337272a91.9.1772663698091; Wed, 04 Mar 2026
 14:34:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-panel-patches-v1-0-7756209477f9@gmail.com>
 <20260223-panel-patches-v1-3-7756209477f9@gmail.com> <dko7l6iage7blup4zbpsm32d2elvxpengqwbzcsv4v4zedjmpb@rsdrb77acgme>
 <CAHuF_Zpa+cr6aq89kCon1dC3Q0PEV17VfyAbqF0Ojgmgn32yTQ@mail.gmail.com>
In-Reply-To: <CAHuF_Zpa+cr6aq89kCon1dC3Q0PEV17VfyAbqF0Ojgmgn32yTQ@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 00:34:47 +0200
X-Gm-Features: AaiRm536OywcYBuxo9AVuL0yS1b3mC74MFjTluSvJIMSZmnE4Apm4Yr4rK9zJ5s
Message-ID: <CAO9ioeWCLeF5rD8=WVbyKBD=azFZ5=Ee=BH9209Rw6kd5EOJug@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout: Enable
 MDSS and add panel
To: Yedaya Katsman <yedaya.ka@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        =?UTF-8?B?S2FtaWwgR2/FgmRh?= <kamil.golda@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE4NiBTYWx0ZWRfX+gJFz1Cx0p9I
 7tO17fGtxd4zCO3gncJSIX/05C5y3QZJD8953w2eRXUQPDgf7WpPGbMpfY2oaUtQo4M1e4CKDUU
 f8W4eBBtTvpnUFjIZYbO7LgSvEXDcq3FDYSy1IhH+cLgceYl3Bx/3pzW0DImHZHuFURzawKVS1r
 EgRzn9EcViDzzKCDYjtf6PLnQirXKzAXpezNymANiIN8IGGQ6DwcbAvDTujMuFxj7VItgdM1SDr
 RVimEPObGbEom9dAz7HRrZ7acwUR4MutBRAqZHe0I6OxqLe0o+k0HdrYS78kgnEc6ENyeMr61Rt
 7NPU2TpL7mBNA/e9+718OTNCGoIyuEXHRnMneK7DRzSieSlqnz84FrQb3DwRXOChqXfyrIwtR4/
 QymSn+kp/aU/8iPd9q5aoRB4l6ksBzZPFQiD3tf0IkI2jRtbF+KlNLYjL66Ab/XTWvKWkCfKee0
 X8zRwhPp1OTXKTu9C+w==
X-Proofpoint-ORIG-GUID: U72kvpa2gsUznvDx0kq5SxheJOwdmisR
X-Authority-Analysis: v=2.4 cv=Ddsaa/tW c=1 sm=1 tr=0 ts=69a8b393 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=Um2Pa8k9VHT-vaBCBUpS:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=rmZjoFom7a3_dF09p14A:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: U72kvpa2gsUznvDx0kq5SxheJOwdmisR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_08,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 spamscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040186
X-Rspamd-Queue-Id: 953EE208B47
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271289-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,lists.sr.ht,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim]
X-Rspamd-Action: no action

On Wed, 4 Mar 2026 at 20:04, Yedaya Katsman <yedaya.ka@gmail.com> wrote:
>
> On Tue, 24 Feb 2026 at 04:46, Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> <snip>
> > > +

> > > +&mdss_dsi0_phy {
> > > +     status = "okay";
> >
> > Missing vdds-supply.
> >
> Can you expand on that? The `dsi-phy-14nm` schema doesn't have the
> vdds-supply property. Do you think it needs it?

14nm PHYs have vcca-supply. Anyway, the PHY needs to be supplied by something.


-- 
With best wishes
Dmitry

