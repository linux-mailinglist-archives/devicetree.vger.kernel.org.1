Return-Path: <devicetree+bounces-274144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4C1UNJN6sWk2vgIAu9opvQ
	(envelope-from <devicetree+bounces-274144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:22:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C8026556E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:22:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 13C31301453A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF9E39DBCB;
	Wed, 11 Mar 2026 14:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cshuT7wH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QgsL01Gl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D6336B059
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773238927; cv=none; b=NPHQib9LZemXAnKZjfJ2mFFTTSbxEWi6WSR255p5/BY8rMGKvzazQ4oTm4eAPaEZ4GvqiY4HGpbEIYAZsp29xompn8IizswEGXTQ+XG2vByxVp5uIDyHZD9SMS88U5lhXHWOn3OQKgj8snmq3+5u/pv8mU6NcKBV4pZ3HXQ+YLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773238927; c=relaxed/simple;
	bh=BEse+cE9zlBvxfia2wA5EtEVYF9p+DcpUxCB9fBv3og=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nY/b5apVr7Sp2g46xqfypUOIzmltEyy7gqvpt9lGNqL/oxfK2gbj5Pso3G4Uu1ZO5rv7dNpkIrwZ5RlIK4D0oRBjPVuhmzipOYORtcBuafVb85mRpCuSpFIA/mNIzd63Yqz+Ng+mIqMVFygFT2go3UgPITyanm9qM+gEQw5XXE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cshuT7wH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QgsL01Gl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BBZLJ12676536
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:22:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aTZnadCn5tehATe+DzWXrlLxONcL0EVdRvHENRNkgS4=; b=cshuT7wHAs3bMZMY
	khk9x6m+qS6xTCEUcOPzaMl56J8Zdf0pDHEm2irMYh1HtIp7rTQxxpHePQb5Li4K
	ByAxA1VA/0AxbB9HODpvwwGNK1yKy5AUSbI1TvrY26L9JsZeVGi3TUkX1ZyDCRso
	X69PDYRu2SZ5upsipdafMIjH6ctabMvTzXCh48ABfbKpx4a0WT+sSrA9BRea9q5V
	gqbUAxJn8VG3wZMKgm2VJZaISGxuQh7ON3JMH+vrV3TYmFaykaLcFQIm5ZIwl/fI
	x9F11o34ENdueJpx2WPiEEEZwu0AXHB2mN+Vf/KbeMbFTj3tCsc0oEthLGqHADJw
	wSNa0g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu3cd1qfw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:22:05 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7a25c5a9so2123482685a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773238924; x=1773843724; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aTZnadCn5tehATe+DzWXrlLxONcL0EVdRvHENRNkgS4=;
        b=QgsL01GlPH/oery/yh+j1mCQpFUJ+WXRMZ823Sk32GkAYgGVFIDBQI53fh0Jah4DQ2
         Sr1pDyO1PZBFHNfp6bF+EXaBJkrxGgLSzlTbEQSrdNetK+2bwf58P8tp6R/PcQAJA3/7
         EhYEDA8qzeHoCIxrSDUlUghGSWTj6mbJEZ/4FzAKzolb53L2JLcSBnvp7pwqGhWdUKHS
         TR3GFdK2wY3az2pwY5Me2Grzbu6hOLPTG7q3h5UW+cV8x/Q0naIyIfxpUR0RUkKsnxU2
         BsDrU4IxjAwZqZ7FB+oS4QQHSg4nFeWlEkcbV8LFmCNUXNfwUJKjLR1ka20cTdFY9W/P
         bXhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773238924; x=1773843724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aTZnadCn5tehATe+DzWXrlLxONcL0EVdRvHENRNkgS4=;
        b=BZqD69nuVLTE58xOeEkk4GdzlakxtgifJuysK5tkVjUrTB2hEX1s23cQe/UKpaoSDk
         IZDCICI6yDJJBGIpK4Q/tMqY9uFXYDxFNx/7Aq6iygNhTE8ZzmWJeEC6BBltpIM3woxQ
         699oltdvlZq3s+NO2eifV3QGo4NSr8U5e1N5WWmR3r+iAzMqWbnjO/boS9gAkqD+Ns07
         T0LEhQ9ROH93bcyV58I4j5JV0IXrhORbe5bSO6D/wkljqYEVCpOoUk4zpy9A3DeP6XHH
         077RUBV4FsNIA5tOwv2kSzTEC+P81IICAK+Ju/NMDn9ErnCbhv+gzvXfgw8C6y25bPZL
         hBlg==
X-Forwarded-Encrypted: i=1; AJvYcCWzpv0dIWQFwWkkyBRG6bADrlXFiAcRwk84+6APZMBOAMg9CCb66PrRCHuyn7CE9ganW6d/smidZJ/O@vger.kernel.org
X-Gm-Message-State: AOJu0YzFssaWFEqkfVdIxz3wo0vieoegGuqjEDRTW7i9kKdkPXY4LuE6
	8quYD3+Aa27k47vsbgF7g4ijzI/a27V/KRMZMQJCmu+s9HVbF007b+K8B6VgNh3rXGGUcUAAmrR
	e5Ljpgr7/ARwtSnHepQysyjXS/CP7WTcNyWZHgLEBVi7f2ibHfcg8dEzTPRL6i1la
X-Gm-Gg: ATEYQzyYdhrUkvzcmS+NcJG9is1drzoMx3mgePKvEjPAQBEyr5Cl566PKTf51AlFyPX
	CEtuXSiRLY63E/TqS4EPIpbBw+2tQcJlAwQ22TKxtZOuuwIsPF0kqR/5mnhVqjNAuvstY95YQ5Q
	YzWu+T3i6U0PdasvoWoIfk4O0K2xnCzvhLKY2c3H4R9k3mZKAtjUiHuS/ekHSSakScxFDccS38x
	Zvty79Z6JkqxgJ3lWciZycSoSRCLTGLiTcapvBkXtzSCTkKdlQ7r5M3A3jBbXTDP9dHf6jHY+xW
	wKpgputCdXpyn7r6adHvTHtk8tgUgNPP2nuhS/zcw42fDTchIjUEXsDm8ogcf8y2ejWPrOCUuun
	KfGF+WjFuy96kYbFher5EKwX5oVuwObcic+22TTelxMrDHU5tRKE=
X-Received: by 2002:a05:620a:468f:b0:8cd:a071:9aac with SMTP id af79cd13be357-8cda19f395cmr343231685a.24.1773238924089;
        Wed, 11 Mar 2026 07:22:04 -0700 (PDT)
X-Received: by 2002:a05:620a:468f:b0:8cd:a071:9aac with SMTP id af79cd13be357-8cda19f395cmr343226185a.24.1773238923609;
        Wed, 11 Mar 2026 07:22:03 -0700 (PDT)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:3a92:6740:d71b:5056])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972e14ac0dsm57656966b.43.2026.03.11.07.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 07:22:02 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Peter Rosin <peda@axentia.se>, Linus Walleij <linusw@kernel.org>,
        Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        kernel@pengutronix.de, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
        linux-gpio@vger.kernel.org, David Jander <david@protonic.nl>
Subject: Re: (subset) [PATCH v3 0/8] mfd: Add support for NXP MC33978/MC34978 MSDI
Date: Wed, 11 Mar 2026 15:21:59 +0100
Message-ID: <177323891652.11261.5778359438358477174.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260309134920.1918294-1-o.rempel@pengutronix.de>
References: <20260309134920.1918294-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEyMCBTYWx0ZWRfX/1JJK7ZwtmLr
 zAtxFx10P27lptQU8PMRA+5ydfCpdNtvVZDUvAhc5d3hLu8zuxZ6oh7mGAuXENDA/GWzdnyOJn7
 qs98paIPOr+UVrkR9NdnvcE4P5jaBPYLuRuTObsrMrqM2XyItCl5zar4vzeAlUvN6gCTnYOzsj9
 4jozycUHeW26LeV5ozcTDE3xO1SA3ic1uLVzJ3PU4VrcRMcVOBfV9fPe+lw6FnIWq+MrUDJp8IY
 CdhbSalKs4ZPE7K5f2yknvUuFp6D5gFW2RDB1PwvwkSXqctFqVO8q7IfR8b33RCRtirJUc/PX0H
 9XGg6OFMdnaI++CIBOQ37zmKrWYFRXeq24aPSc1hkPzxQndga34AUBLhWnmq1iTgm81OInzpJF2
 4PzMM8YQFdCoCd4hbB79JHzbaaeFclE+UrfxZFGWtlWauSh4It7AAaNeDbigvJBB9WZBG/wrucS
 1eDGSA/m7ZmovzwnQzA==
X-Authority-Analysis: v=2.4 cv=O/U0fR9W c=1 sm=1 tr=0 ts=69b17a8d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=7B33ad9EORelKyuzWjYA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: cR9OjqMAOR__k-Q58k1D4CsFvbLTBMKf
X-Proofpoint-ORIG-GUID: cR9OjqMAOR__k-Q58k1D4CsFvbLTBMKf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110120
X-Rspamd-Queue-Id: 22C8026556E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274144-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On Mon, 09 Mar 2026 14:49:11 +0100, Oleksij Rempel wrote:
> This series adds support for the NXP MC33978/MC34978 Multiple Switch Detection
> Interface (MSDI) via the MFD framework.
> 
> Architecture overview:
> * mfd: Core driver handling 2-frame pipelined SPI, regulator sequencing, and
>   linear irq_domain. Harvests status bits from SPI MISO MSB.
> * pinctrl: Exposes 22 physical switch inputs as standard GPIOs. Proxies IRQs to
>   the MFD domain.
> * hwmon: Exposes thermal limits, VBATP/VDDQ voltage boundaries, and dynamic
>   fault alarms.
> * mux: Controls the 24-to-1 AMUX routing analog signals (switch voltages,
>   temperature, VBATP) to an external ADC.
> 
> [...]

Applied, thanks!

[4/7] gpio: gpiolib: fix allocation order in hierarchical IRQ domains
      https://git.kernel.org/brgl/c/a23463beb3d52815e5f8e61998f5c94f13274544

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

