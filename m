Return-Path: <devicetree+bounces-272910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHmJIzq6rmmxIQIAu9opvQ
	(envelope-from <devicetree+bounces-272910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:16:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 151D2238A53
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:16:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5428530E9AA3
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A8473A7F59;
	Mon,  9 Mar 2026 12:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bM8Vm27w";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OaIhA9b0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5D6394462
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773058190; cv=none; b=I3YJzQYzJP6QsthdJh0mcgZZkGtTvdVCDGwoydb4pDhme2uAbHqwsX5I5rb+CZ2CJq0c7zzGocG0TkAmR8dC8owso+qdc3XeL5fIndwhEiGxsKlFn0qxmatVV+lN4IEsCm1OLT61W5XXMimoEyRfYtlWsK3aHG/k53x5+bI97SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773058190; c=relaxed/simple;
	bh=JwOxq0pFoxiQTlNl0toNq+EGO6No5r7lL6YqkNe8BeM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r3jwno0c8Ah0z28icCD1UMD9KK5O/lXZoe/beuGDGFl2h8A0oVXGpLdyhGp517KLsPW0kHyIzip7hAfJZxGKUoXxv5IaJO5dxbjFD8btUaYbFOABBzIxt9HT9Gv2PT6xRvnWtNGY6kBln6mqa6lqwskhhtEChwnYc8Oxn4P5cCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bM8Vm27w; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OaIhA9b0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62986Xu43462759
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 12:09:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FHnNc+U6HKMwPEIKj5LiXghp
	YCkex9c2mFBJTAIbIok=; b=bM8Vm27wx2lWU4bhbbatg6JSoJhpQLc6H+CSYc9y
	27aqvZPe6zF7u7boJzrXzfEc3hoDuiIeH1RZ9bSpePdH6LT5u2cMsIiFeinMbOi1
	sqrnkl7pvqE7NKm998LtMuvtZ8Khf+0H3irnwr5Fwkd8eg7JdKvW3xApCVCF9sX2
	RfgPmWWtd7619EaXqDCJhTYR4BEVzu40b+fhzyyMLNYy95CiBg/mw6aKuH28JRgo
	XzDnKI1TXs0GM9702uYWg5kUyMNy3XYD+3AZwhUFa1S8eAWVxKKUg5ppBr17F2jL
	fu6JYnB03QDpd73gJaXzBcqPM1M/nJ4PtM72x/GsPHsXAg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crcd8d8c0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:09:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd85e08fddso977967585a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773058187; x=1773662987; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FHnNc+U6HKMwPEIKj5LiXghpYCkex9c2mFBJTAIbIok=;
        b=OaIhA9b0iMIsVl3v6v3wVoq6vMrvkMVClwAcvun/e+N6WJtRRX5oFGCJ6Oo2ud6UXV
         yi4ELASmebz6wxzJf+yWuk8Fys8EgSE1SCcJEsKEdjSOvUfDfBxQo/mBgeNRiWghMYYV
         aVsdG6ocU0EWq6SB5Uuh+4RnWuaEt3CUMeD3Aqv19u5udlAQUtbNKxtjFJnkhBmdPy6W
         2no9+rPDPBT/tRh6pPROgr8EcruumANcg/g/WPNHYTIeWDJVP5HZkcBw2kriOc+n5DDI
         MibUPCnDq0Pp7XDZQV+UCD+e7OH6E4bxXncaSh3FgI6Xq8c8qhprMVwcojqdq8KQMAhQ
         7JZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773058187; x=1773662987;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FHnNc+U6HKMwPEIKj5LiXghpYCkex9c2mFBJTAIbIok=;
        b=NywONaSD/n2lfkRPegm/sP5a8WHu1a7OIaQwUDiIPU0LsLbiv/TmKhX+6QLcZBLvNT
         Q4G98G6AhKN1AKfyANW5u1ykupsLRGgQ/RbJUk5K1BiB/pM9ij26bIdu8UnIbqHmvOUy
         iHmhEEMIXQD/akdG5+138CGx6By9WgX6oE7Gs/tG9/ihVPF+5cjTlNZSaLiE77xq5R80
         NNwB/4OUnBs3TUonbnKz+4xkvbNNWvz20+hGtulm0zrnhQ6zcGcBIYQJlsrENTnIzy/i
         ul4EifrTNdvN1T/MeMUZF2gt7/2JkNF4X9tmYkl3I/tF20pRHB8lBZAksdxPUU5taaOO
         1jhg==
X-Forwarded-Encrypted: i=1; AJvYcCV7u1nCQ5+LN6tDYNxmvJE/ABzNCqvEugvwaSzO6IeIF9tNYFyFrQnuCtqEPM6P+mqftRsNqXcuJC2/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp2dgiRdkjSWNXoXHe17NxUccV/WLeHNMrHKWBpkXoBpqY3Z+Y
	ABYrOgtZSARYyMObJxtbUgYmdGgMJeiPOx1rlSgDCnEb+HNBXqH3QyFWewrlqmM9gok6heFJjQm
	7dVL3P7W32znPPMgJYtxNR7r8P/6xGzME4VPzeot2hqD/wz3GQbX5vu4oKG+RVGRc
X-Gm-Gg: ATEYQzzx02P99W5jbn43TVc7b0P/qWoaRSmoJNpP29g4ZhBB94ljAteC4iJjv2rWw3e
	cB1UymQ7DD9+Dbgvo/fS+7b3w7CMDoYSeluoFIWwlKc7JiyU/IegT43AThafmi8n7HwxYBy/28U
	vJDqCtmwOS7mzBeUy9Fo+f7MTEGtI5h7Wq3+RcJiOs57gnDF5Ufwl2jpRDF+LqPJ87PGTGyniDt
	3YrB8NhHzWukRx1R5SY7BLktGVPK7T4WLkHkxgxrRnEOmE7ZoKCpMa3A1QSGBRLBIH2LmADtO+N
	lbbKFRgiG38xvW1LPM7oJgTtSMEdIf2QLz+s9B6gJ32YJZ4ymL6NGInXtE0ICiG2FCHDk6/nT7B
	SzjSNuTiiI/1g3iGpNpiAvYQZBP6jnqTX1n0E
X-Received: by 2002:a05:620a:4093:b0:8c9:fb26:dc6e with SMTP id af79cd13be357-8cd6d4b4efamr1372445785a.38.1773058187259;
        Mon, 09 Mar 2026 05:09:47 -0700 (PDT)
X-Received: by 2002:a05:620a:4093:b0:8c9:fb26:dc6e with SMTP id af79cd13be357-8cd6d4b4efamr1372437785a.38.1773058186689;
        Mon, 09 Mar 2026 05:09:46 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8d840sm28998040f8f.8.2026.03.09.05.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 05:09:45 -0700 (PDT)
Date: Mon, 9 Mar 2026 14:09:43 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: glymur: Tie up the CX power domain
 to GCC
Message-ID: <zvje6upzpskxzzq7f22oastrfw5jkbdyzwwexsvppvmrlgxhke@sp7g6hbn3l6v>
References: <20260309-glymur-fix-gcc-cx-scaling-v1-0-f682c82f116f@oss.qualcomm.com>
 <20260309-glymur-fix-gcc-cx-scaling-v1-3-f682c82f116f@oss.qualcomm.com>
 <fa8ff125-8680-44c1-b516-66d06eda7b91@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fa8ff125-8680-44c1-b516-66d06eda7b91@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: cQ6pLUhYXyvZC7kRvhblCPa9tfTSl4c0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDExMSBTYWx0ZWRfX5HuCsWn0TR/W
 64DxQzN+aVgu8mGGi+/jtYDgvrLZeCqQDwEh/3AlyKhRPbbqe2JuiesSRaXr8UibTD+Eemgzt5x
 7xFPZA2hEcjxs5iBNab0jEDbrkgH0qU2EQlcKY2FtuWy21enbIcTeVeRBlJ91Qg/3U4CGGyJwVx
 kOqobOAHCDpDYByC1/qdSPKzT4Hb5taA1picuvHwGqQ3n8BRm0zJsb9EkHAqjasjGe1q1x8U47n
 sPueZmjIEVunSGrIgO40/Sp75sd0370kMz6CUjGSyo22on/tH+Fu3epnlXC2QxSkYhO+YBmGnnY
 3uJUggLw6oT3XeRUis+SpIodje0itfspXX76s7eOX/pIRV2nu8SnzEapOAjwnfvrV2l5RH6Z46F
 fGbpSPUOmclQIprEE8n2OzkK1mrPl3j5JoAxAAZsLFxaqwQRMawYFGmzksHEq/fU+aq+NtAKdFR
 ZtctTMvQCsoSVgmjn+g==
X-Authority-Analysis: v=2.4 cv=O/w0fR9W c=1 sm=1 tr=0 ts=69aeb88b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=_0VSbVN14Kq7ih5JQgEA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: cQ6pLUhYXyvZC7kRvhblCPa9tfTSl4c0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090111
X-Rspamd-Queue-Id: 151D2238A53
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272910-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.1.134.160:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.935];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 26-03-09 12:17:18, Konrad Dybcio wrote:
> On 3/9/26 11:06 AM, Abel Vesa wrote:
> > It has been concluded off-list that the Global Clock Controller needs to
> > scale the RPMh CX power domain, otherwise some of the subsystems might
> > crash or be unstable. So adding the RPMh CX power domain to the clock
> > controller which will result in all GDSCs being parented by CX. This way,
> > the vote from the consumers of each GDSC will trickle all the way to CX.
> > 
> > So add the power domain and Make sure the required OPP is nominal.
> > 
> > Fixes: 41b6e8db400c ("arm64: dts: qcom: Introduce Glymur base dtsi")
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > index e269cec7942c..2d1ffbf53730 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > @@ -764,6 +764,8 @@ gcc: clock-controller@100000 {
> >  			#clock-cells = <1>;
> >  			#reset-cells = <1>;
> >  			#power-domain-cells = <1>;
> > +			power-domains = <&rpmhpd RPMHPD_CX>;
> > +			required-opps = <&rpmhpd_opp_nom>;
> 
> Let's not keep the system at close-to-full power all the time.
> Please drop required-opps.

Did in v2.

Thanks for reviewing.

