Return-Path: <devicetree+bounces-273088-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEPBNBEir2n6OQIAu9opvQ
	(envelope-from <devicetree+bounces-273088-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:40:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54809240396
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ABA9930488D2
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 19:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D303EF0AB;
	Mon,  9 Mar 2026 19:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TCW3MZgJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MJxU/q/i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3231C410D07
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 19:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773085114; cv=none; b=Zv0NEJ49T4F6q6GeczPaLhSk927YGo8cgYBiYq/ICGVlnhIds8Ii7Wn20wd/pxC0bqFNjeltDx+8TCiKZXAOaJuhdTQBjDAIbwMGIbcQf1QBF0+hUTqUBGRBZLfn9uW6VMK6aAwJ64M0ON5kOzqjJ9JDr2sHk+Tk9jJ91M2JGGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773085114; c=relaxed/simple;
	bh=Loslotr9NW0zDRfJCdEhJWGxURNCLV/qgMJ5loZUKjQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gfh73tEcgv8tRZhI6E0j2ehCP0Xrmt7mAMTaWCXQf6uqoz1veLwL9f7q/TrkaZieztBXDktROgDC05OL6Z9iQ9UH2mtz3es2HhrcSKoyjARCpVpuu7tW7lvwToJd+ycqysA9F4+f4RZi4fUIZj1bKZwWiN6Wa9Qxqy1yTeJRXNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TCW3MZgJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MJxU/q/i; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HCBRO3149075
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 19:38:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b8esErilgfq/s8BkSvNufUOr
	3rLNwqSWbF5fuS60O6c=; b=TCW3MZgJ+oboxJmoQGpkU+tXKUuzG9xxkSExPkI/
	2wnB4NKydHf9uXY/Nh3L2VHTN8AwO3ZRIU1c3ZsqpteNTYabeGieklSatJZ5oDsf
	ZSDxGVioUeqGsLTM6wIAvXurPG4KNkDBZWlyeLbP8R7hJiPbAb88on45RaqGZKWI
	FUASZAoSxfBjM1ME+W97KALovwj4zZZ5y+RvXPMrbsfvkjI7HcSih3JrXhzqx56D
	T3dj4Rwcig4RI3PBYmQjVHhSvKEutMa1QsK0lixFFjkyaI89cqeWyoGuMB9K+tLg
	Pt/O1mqEbJDVcP1A01kW3hDuGArq6PLzXPEHwkmDBbMReA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5u9vqv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 19:38:29 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5090bc4823cso16723491cf.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773085109; x=1773689909; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b8esErilgfq/s8BkSvNufUOr3rLNwqSWbF5fuS60O6c=;
        b=MJxU/q/iKS525HFXjsCfdwwEsPUwc2+jYrNjHl1epljgKhJQsRkkM6P5FT0zKaSr6g
         A1EbHEG1FtCANr4DRt1vtQE8LwBVM5cpQApFsV6DQPKzDJKCQ/HLGQFf5iKjcI1T13yZ
         rgkx2Z22+vKhxeWPqIpWv+N2fdomdFtsT/RrA19XCiHDTt9vj6McXL2AuU51I7WYAISQ
         HPejnCLrp7afqu1SGaJHx993Yi9DeMTpmXTUupoKNpUe6dMC3CiiewhXTmEEYhLT3d+Y
         r72oLhFF7kE4WCVrljW5CGptvzEshgXy49ybdbkZNa5OfCCSiIQ9ktytRPrTyxUxGMih
         3STA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773085109; x=1773689909;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b8esErilgfq/s8BkSvNufUOr3rLNwqSWbF5fuS60O6c=;
        b=TeStgxgTX4G8S5i+OMCx77Ol6YNwP5gZ1eVbxOcYJphakKuIOgzb5Ekg4xbWcdFE1b
         vZqk4MnBJuLyYbK+VkApPJWlIT+kXiXE+2ZijoDXY2/mEN0NE0/pYCl5rHL13+HhwoJl
         6pPYP28n6yYr5o3JjtVtTsSowVz5u57qk0Hy1IUQsVsljqAcZVotTziZayFOJGNjZuFF
         Zbnj+z7BeBWAI0kpmeBZ4142UXx9qOoMhpgArFB3RqCpfh0Qp0/2BYicPn+PLOXALTSf
         wkoQv4NdNC6Bz9YqsPOkcXG/CEhcD0htvqQGP3zhvMNRxJX6YY/ZZZVNzs9rFIlwJsgy
         W69A==
X-Forwarded-Encrypted: i=1; AJvYcCUrUBCheVZE4G4nJHEVd7WQaaJTYtnUIZeDmclwjR01uTXfV3p57AxgGTNU0j4O6D/xfSkC8bvRaSus@vger.kernel.org
X-Gm-Message-State: AOJu0Yy39yPObYGDM4JnM3umjrEZnAu3ZaNE2ckRvZNOvEotG36RTm7x
	ZeSTHVO4j9iVvpfDrgfqrmWx3hdOScxOUPqI7m0IuckNh8oC7USHHaVmkpj4oZaJhJ2Uf9zO9rN
	8GnKXyHypPQ+lNUV7s9nrlxmvIP/LwVjFhROHN83KDW6mD71AUJ/PR5KRwN6PTG8K
X-Gm-Gg: ATEYQzwOKeD6Y9hZn4GHUK6IG6x09U2ksTA2wi/4KBm8qBj1Mm7ubGZYLZO+FHb/URF
	fUT+BYWBYVySDzfQAm4HE2b+SV7N6rAXeOe9KhdQAnn/lyt1JOYibBxzKCEVWr9u4b+JolzH34v
	x0+qoSF9Qb1Z+M9hmJOEhLA20n7p3FTbjjbtl4Spwz/HfezNKMLLTsrvnQMOWq9QDwTduIGzw8A
	jOg6eH2V1IbaNhHQY3W5ttXk3qo/WEjanuPZf4kBGVY8yPXzr5HVPgYcKQH39pEPBPa3Pd5qLB1
	1B8I0dWQI7S4C14Dd4WG0TzFitsHSJGA4BdQS1ajIg7cB6mOu+C8KSiRK0mHiqji0o6xDoLgAyz
	PBUe8jW8U77fejzn9eJOOnl9c/m+7WiqjVvu1Aiu02BlXkSAmYYtcg8HWT0RjrLZbT4uvDAGqlO
	DKd8H9w+NvZ12YY1HlBj0BIzZs8qgvzXhKIm0=
X-Received: by 2002:a05:620a:44d1:b0:8c7:1156:efeb with SMTP id af79cd13be357-8cd6d431747mr1653861685a.24.1773085109087;
        Mon, 09 Mar 2026 12:38:29 -0700 (PDT)
X-Received: by 2002:a05:620a:44d1:b0:8c7:1156:efeb with SMTP id af79cd13be357-8cd6d431747mr1653856285a.24.1773085108412;
        Mon, 09 Mar 2026 12:38:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d02b184sm2337010e87.23.2026.03.09.12.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 12:38:27 -0700 (PDT)
Date: Mon, 9 Mar 2026 21:38:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        geert+renesas@glider.be, arnd@arndb.de, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com
Subject: Re: [PATCH 6/7] arm64: dts: qcom: monaco-arduino-monza: Add sound
 node
Message-ID: <mnehsjwwp54sk5bck32emtw3e5t66b5o447m67po42vahydkv2@cdnc7yzzkwlx>
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260309152420.1404349-7-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309152420.1404349-7-srinivas.kandagatla@oss.qualcomm.com>
X-Proofpoint-GUID: lzZp7-t1xc7eIwamo3aPbf-kqGuPX-Cj
X-Proofpoint-ORIG-GUID: lzZp7-t1xc7eIwamo3aPbf-kqGuPX-Cj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE3NSBTYWx0ZWRfX2m0C4sGbWWla
 6jwe/nPf927fxIRgwNXGEoQx5CZPVtqVoX/CJ2HB89vNo3EfbCSS/jkYNN8Ly8T7H//g9fFLKms
 71BJ2dJipcum9TNgJIiVchqEjWlhkTHGnTeaTW6EEX6uDVlkG6d56VhUIs25LCry0kmoTGtrrQe
 8VHFCLlvTkl/LFbxDgPgQRoYdDQeEmVA+Th2TAO74ns7QEXyyhqBrIGLF/SF3NINBOTIizIrZcT
 Fg1JlNe5ABqEPmZK7MSfr8cX46wsshQd5j4gH26RqcDZdTmnJlUo4Me4OkzTjZ/5IgGqa+PLbTR
 G21ezqkKZvbp9UwecFcjz0maOQu4dulgpBT4nKuKCTQnDEY4aftTncCBhmYZjelq95Yrris5ILT
 eSAfcXoegai+HozdfisCwRwZCSimL2acCSJdTGq1T+3qfoeyM9UemUoE3zmMvkdEMgph1qnPfx4
 oB32b3dO5SoPeh5tkEg==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69af21b5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=fNMmvbdrdlD2suN_VgQA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090175
X-Rspamd-Queue-Id: 54809240396
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273088-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,glider.be,arndb.de,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 03:24:17PM +0000, Srinivas Kandagatla wrote:
> Add audio support for Arduino VENTUNOQ board, which has Headset, Mic, Ear
> and Lineout connected to external Maxim max98091 codec, HDMI audio
> via ADV7535 dsi-hdmi bridge.
> 
> Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  .../boot/dts/qcom/monaco-arduino-monza.dts    | 66 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/monaco.dtsi          | 55 ++++++++++++++++
>  2 files changed, 121 insertions(+)
> 

If you've added the file just two patches ago, why do you need to change
it again? Can't we squash this into an earlier patch?

-- 
With best wishes
Dmitry

